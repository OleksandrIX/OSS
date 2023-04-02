$userPass = ConvertTo-SecureString -String "PaSSword123!" -AsPlainText -Force

$pathOU = "OU=Test,DC=test14,DC=local"

$collectionDepartaments = @("Департамент фінансового забезпечення", "Департамент правового забезпечення", 
    "Департамент тилового забезпечення", "Департамент міжнародного співробітництва", "Департамент стратегічного планування")
$collectionStuctureDepartament = @("Управління департаменту","Секретаріат","1 відділ","2 відділ","3 відділ")

New-ADOrganizationalUnit -Name "Міністерство оборони" -Path $pathOU
$defenseOU = "OU=Міністерство оборони,$pathOU"
New-ADGroup -Name "Group1" -GroupCategory Security -GroupScope Global -Path $defenseOU

#Департамент фінансового забезпечення. 6 груп від 2 до 7 та 15 користувачів від 1 до 15
New-ADOrganizationalUnit -Name "Департамент фінансового забезпечення" -Path $defenseOU
$financeOU = "OU=Департамент фінансового забезпечення,$defenseOU"
New-ADGroup -Name "Group2" -GroupCategory Security -GroupScope Global -Path $financeOU

New-ADOrganizationalUnit -Name "Управління департаменту" -Path $financeOU
$financeMgmtOU = "OU=Управління департаменту,$financeOU"
New-ADGroup -Name "Group3" -GroupCategory Security -GroupScope Global -Path $financeMgmtOU

for($i = 1; $i -le 3; $i++){
    $userName = "User$i"
    New-ADUser -Path $financeMgmtOU -Name $userName -SamAccountName $userName -AccountPassword $userPass -Enabled $true
    Add-ADGroupMember -Identity "Group3" -Members $userName
}

New-ADOrganizationalUnit -Name "Секретаріат" -Path $financeOU
$financeSecrOU = "OU=Секретаріат,$financeOU"
New-ADGroup -Name "Group4" -GroupCategory Security -GroupScope Global -Path $financeSecrOU

for($i = 4; $i -le 6; $i++){
    $userName = "User$i"
    New-ADUser -Path $financeSecrOU -Name $userName -SamAccountName $userName -AccountPassword $userPass -Enabled $true
    Add-ADGroupMember -Identity "Group4" -Members $userName
}

New-ADOrganizationalUnit -Name "1 відділ" -Path $financeOU
$financeDept1OU = "OU=1 відділ,$financeOU"
New-ADGroup -Name "Group5" -GroupCategory Security -GroupScope Global -Path $financeDept1OU

for($i = 7; $i -le 9; $i++){
    $userName = "User$i"
    New-ADUser -Path $financeDept1OU -Name $userName -SamAccountName $userName -AccountPassword $userPass -Enabled $true
    Add-ADGroupMember -Identity "Group5" -Members $userName
}

New-ADOrganizationalUnit -Name "2 відділ" -Path $financeOU
$financeDept2OU = "OU=2 відділ,$financeOU"
New-ADGroup -Name "Group6" -GroupCategory Security -GroupScope Global -Path $financeDept2OU

for($i = 10; $i -le 12; $i++){
    $userName = "User$i"
    New-ADUser -Path $financeDept2OU -Name $userName -SamAccountName $userName -AccountPassword $userPass -Enabled $true
    Add-ADGroupMember -Identity "Group6" -Members $userName
}

New-ADOrganizationalUnit -Name "3 відділ" -Path $financeOU
$financeDept3OU = "OU=3 відділ,$financeOU"
New-ADGroup -Name "Group7" -GroupCategory Security -GroupScope Global -Path $financeDept3OU

for($i = 13; $i -le 15; $i++){
    $userName = "User$i"
    New-ADUser -Path $financeDept3OU -Name $userName -SamAccountName $userName -AccountPassword $userPass -Enabled $true
    Add-ADGroupMember -Identity "Group7" -Members $userName
}

Add-ADGroupMember -Identity "Group2" -Members "Group3"
Add-ADGroupMember -Identity "Group2" -Members "Group4"
Add-ADGroupMember -Identity "Group2" -Members "Group5"
Add-ADGroupMember -Identity "Group2" -Members "Group6"
Add-ADGroupMember -Identity "Group2" -Members "Group7"

Add-ADGroupMember -Identity "Group1" -Members "Group2"
