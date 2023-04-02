$collectionUnits = @("Департамент фінансового забезпечення", "Департамент правового забезпечення", 
    "Департамент тилового забезпечення", "Департамент міжнародного співробітництва", "Департамент стратегічного планування");

$unitsLenght = $collectionUnits.Length;

$pathOU = "OU=Test,DC=test14,DC=local";
$structureName = "Міністерство оборони";

$mainOU = "OU=$structureName,$pathOU";

$StartIndexGroup = 2;
for ($i = $StartIndexGroup; $i -le $unitsLenght+$StartIndexGroup; $i++) {
    $nameOU = $collectionUnits[$i-$StartIndexGroup];
    Write-Host "OU=$nameOU,$mainOU";
}

#Департамент фінансового забезпечення. Groups: 6, Users: 15. Groups: від 2 до 7, Users: від 1 до 15
#Департамент правового забезпечення. Groups: 6, Users: 15. Groups: від 8 до 13, Users: від 16 до 30
#Департамент тилового забезпечення. Groups: 6, Users: 15. Groups: від 14 до 19, Users: від 31 до 45
#Департамент міжнародного співробітництва. Groups: 6, Users: 15. Groups: від 20 до 25, Users: 46 до 60
#Департамент стратегічного планування. Groups: 6, Users: 15. Groups: від 26 до 31, Users: 61 до 75
#Total. StartIndexGroup: 2, StartIndexUser: 1, Groups: 30, Users: 75.
# CreateUnits -StartIndexGroup 2 -StartIndexUser 1 -NumbersOfGroups 30 -NumbersOfUsers 75;

# function CreateUnits {
#     param (
#         [Parameter(Mandatory=$true)]
#         [int]$StartIndexGroup,
#         [int]$StartIndexUser,
#         [int]$NumbersOfGroups,
#         [int]$NumbersOfUsers
#     )

#     for($i = $StartIndexGroup; $i -le $unitsLenght+$StartIndexGroup; $i++){
        
#         $unitOU = "OU=$collectionUnits[$i-$StartIndexGroup],$mainOU";
#         $unitGroup= "Group$i";
        

#         for ($j = 0; $j -lt $structureUnitLenght; $j++) {
            
#             $childUnitOU = "OU=$collectionStuctureUnit[$j],$unitOU";
#             $i++;
#             $nameChildGroup= "Group$i";
           
#             for($k = $StartIndexUser; $k -le $StartIndexUser+3; $i++){
#                 $userPass = ConvertTo-SecureString -String "PaSSword123!" -AsPlainText -Force;
#                 $userName = "User$k";
               
#             }

#             $StartIndexUser += 3;
#         }
#     }
# }