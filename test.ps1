$userPass = ConvertTo-SecureString -String "PaSSword123!" -AsPlainText -Force

$pathOU = "OU=Test,DC=test14,DC=local"

New-ADOrganizationalUnit -Name "Department of Defense" -Path $pathOU
$defenseOU = "OU=Department of Defense,$pathOU"
$defenseGroup = New-ADGroup -Name "Group1" -GroupCategory Security -GroupScope Global -Path $defenseOU

New-ADOrganizationalUnit -Name "Department of financial support" -Path $defenseOU
$financeOU = "OU=Department of financial support,$defenseOU"
$financeGroup = New-ADGroup -Name "Group2" -GroupCategory Security -GroupScope Global -Path $financeOU

New-ADOrganizationalUnit -Name "Department management" -Path $financeOU
$financeMgmtOU = "OU=Department management,$financeOU"
$financeMgmtGroup = New-ADGroup -Name "Group3" -GroupCategory Security -GroupScope Global -Path $financeMgmtOU
for($i = 1; $i -le 3; $i++){
    $userName = "User$i"
    New-ADUser -Path $financeMgmtOU -Name $userName -SamAccountName $userName -AccountPassword $userPass -Enabled $true
    Add-ADGroupMember -Identity "Group3" -Members $userName
}

New-ADOrganizationalUnit -Name "The secretariat" -Path $financeOU
$financeSecrOU = "OU=The secretariat,$financeOU"
$financeSecrGroup = New-ADGroup -Name "Group4" -GroupCategory Security -GroupScope Global -Path $financeSecrOU
for($i = 4; $i -le 6; $i++){
    $userName = "User$i"
    New-ADUser -Path $financeSecrOU -Name $userName -SamAccountName $userName -AccountPassword $userPass -Enabled $true
    Add-ADGroupMember -Identity "Group4" -Members $userName
}

New-ADOrganizationalUnit -Name "1 department" -Path $financeOU
$financeDept1OU = "OU=1 department,$financeOU"
$financeDept1Group = New-ADGroup -Name "Group5" -GroupCategory Security -GroupScope Global -Path $financeDept1OU
for($i = 7; $i -le 9; $i++){
    $userName = "User$i"
    New-ADUser -Path $financeDept1OU -Name $userName -SamAccountName $userName -AccountPassword $userPass -Enabled $true
    Add-ADGroupMember -Identity "Group5" -Members $userName
}

New-ADOrganizationalUnit -Name "2 department" -Path $financeOU
$financeDept2OU = "OU=2 department,$financeOU"
$financeDept2Group = New-ADGroup -Name "Group6" -GroupCategory Security -GroupScope Global -Path $financeDept2OU
for($i = 10; $i -le 12; $i++){
    $userName = "User$i"
    New-ADUser -Path $financeDept2OU -Name $userName -SamAccountName $userName -AccountPassword $userPass -Enabled $true
    Add-ADGroupMember -Identity "Group6" -Members $userName
}

New-ADOrganizationalUnit -Name "3 department" -Path $financeOU
$financeDept3OU = "OU=3 department,$financeOU"
$financeDept3Group = New-ADGroup -Name "Group7" -GroupCategory Security -GroupScope Global -Path $financeDept3OU
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
