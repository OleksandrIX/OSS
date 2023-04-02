$userPass = ConvertTo-SecureString -String "PaSSword123!" -AsPlainText -Force

$pathOU = "OU=Test,DC=test14,DC=local"

New-ADOrganizationalUnit -Name "Генеральний штаб" -Path $pathOU
$defenseOU = "OU=Генеральний штаб,$pathOU"
New-ADGroup -Name "Group1" -GroupCategory Security -GroupScope Global -Path $defenseOU

New-ADOrganizationalUnit -Name "Управління фінансового забезпечення" -Path $defenseOU
$financeOU = "OU=Управління фінансового забезпечення,$defenseOU"
New-ADGroup -Name "Group2" -GroupCategory Security -GroupScope Global -Path $financeOU

New-ADOrganizationalUnit -Name "Управління" -Path $financeOU
$financeMgmtOU = "OU=Управління,$financeOU"
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
