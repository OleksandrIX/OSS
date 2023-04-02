$collectionUnits = @("Департамент фінансового забезпечення", "Департамент правового забезпечення", 
    "Департамент тилового забезпечення", "Департамент міжнародного співробітництва", "Департамент стратегічного планування");
$collectionStuctureUnit = @("Управління департаменту","Секретаріат","1 відділ","2 відділ","3 відділ");

$unitsLenght = $collectionUnits.Length;

$pathOU = "OU=Test,DC=test14,DC=local";
$structureName = "Міністерство оборони";
$mainGroup = "Group1";
New-ADOrganizationalUnit -Name $structureName -Path $pathOU;
$mainOU = "OU=$structureName,$pathOU";
New-ADGroup -Name $mainGroup -GroupCategory Security -GroupScope Global -Path $mainOU;

function CreateUnits {
    param (
        [Parameter(Mandatory=$true)]
        [int]$StartIndexGroup,
        [int]$StartIndexUser
    )
    for($i = 0; $i -le $unitsLenght-1; $i++){
        $nameUnit = $collectionUnits[$i];
        New-ADOrganizationalUnit -Name $nameUnit -Path $mainOU;
        $unitOU = "OU=$nameUnit,$mainOU";
        $StartIndexGroup++;
        $unitGroup= "Group$StartIndexGroup";
        New-ADGroup -Name $unitGroup -GroupCategory Security -GroupScope Global -Path $unitOU;
        Add-ADGroupMember -Identity $mainGroup -Members $unitGroup;

        foreach($structureUnit in $collectionStuctureUnit){
            $nameStructureUnit = $structureUnit;
            New-ADOrganizationalUnit -Name $nameStructureUnit -Path $unitOU;
            $childUnitOU = "OU=$nameStructureUnit,$unitOU";
            $StartIndexGroup++;
            $nameChildGroup= "Group$StartIndexGroup";
            New-ADGroup -Name $nameChildGroup -GroupCategory Security -GroupScope Global -Path $childUnitOU;
            Add-ADGroupMember -Identity $unitGroup -Members $nameChildGroup;
            
            for($k = $StartIndexUser; $k -le $StartIndexUser+2; $k++){
                $userPass = ConvertTo-SecureString -String "PaSSword123!" -AsPlainText -Force;
                $userName = "User$k";
                New-ADUser -Path $childUnitOU -Name $userName -SamAccountName $userName -AccountPassword $userPass -Enabled $true;
                Add-ADGroupMember -Identity $nameChildGroup -Members $userName;
            }

            $StartIndexUser += 3;
        } 
    }
}

#Департамент фінансового забезпечення. Groups: 6, Users: 15. Groups: від 2 до 7, Users: від 1 до 15
#Департамент правового забезпечення. Groups: 6, Users: 15. Groups: від 8 до 13, Users: від 16 до 30
#Департамент тилового забезпечення. Groups: 6, Users: 15. Groups: від 14 до 19, Users: від 31 до 45
#Департамент міжнародного співробітництва. Groups: 6, Users: 15. Groups: від 20 до 25, Users: 46 до 60
#Департамент стратегічного планування. Groups: 6, Users: 15. Groups: від 26 до 31, Users: 61 до 75
#Total. StartIndexGroup: 2, StartIndexUser: 1, Groups: 30, Users: 75.
CreateUnits -StartIndexGroup 1 -StartIndexUser 1;