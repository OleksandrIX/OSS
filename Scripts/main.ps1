$AFU = New-Object System.Collections.Specialized.OrderedDictionary;

$MD = New-Object System.Collections.Specialized.OrderedDictionary;
$MD.Add("Департамент фінансового забезпечення", @("Управління департаменту", "Секретаріат", "1 відділ", "2 відділ", "3 відділ"));
$MD.Add("Департамент правового забезпечення", @("Управління департаменту", "Секретаріат", "1 відділ", "2 відділ", "3 відділ"));
$MD.Add("Департамент тилового забезпечення", @("Управління департаменту", "Секретаріат", "1 відділ", "2 відділ", "3 відділ"));
$MD.Add("Департамент міжнародного співробітництва", @("Управління департаменту", "Секретаріат", "1 відділ", "2 відділ", "3 відділ"));
$MD.Add("Департамент стратегічного планування", @("Управління департаменту", "Секретаріат", "1 відділ", "2 відділ", "3 відділ"));
$AFU.Add("Міністерство оборони", $MD);

$GHQ = New-Object System.Collections.Specialized.OrderedDictionary;
$GHQ.Add("Управління фінансового забезпечення", @("Управління", "Секретаріат", "1 відділ", "2 відділ", "3 відділ"));
$GHQ.Add("Управління правового забезпечення", @("Управління", "Секретаріат", "1 відділ", "2 відділ", "3 відділ"));
$GHQ.Add("Управління тилового забезпечення", @("Управління", "Секретаріат", "1 відділ", "2 відділ", "3 відділ"));
$GHQ.Add("Управління міжнародного співробітництва", @("Управління", "Секретаріат", "1 відділ", "2 відділ", "3 відділ"));
$GHQ.Add("Управління стратегічного планування", @("Управління", "Секретаріат", "1 відділ", "2 відділ", "3 відділ"));
$AFU.Add("Генеральний штаб", $GHQ);

$GF = New-Object System.Collections.Specialized.OrderedDictionary;
$OKW = New-Object System.Collections.Specialized.OrderedDictionary;
$OKE = New-Object System.Collections.Specialized.OrderedDictionary;
$OKN = New-Object System.Collections.Specialized.OrderedDictionary;
$OKS = New-Object System.Collections.Specialized.OrderedDictionary;

$OKW.Add("Командування ОК Захід", @("Командування", "Штаб", "1 управління", "2 управління", "3 управління"));
$OKW.Add("ВЧ4531", @("Штаб", "1 батальйон", "2 батальйон", "3 батальйон", "Танковий батальйон", "Артилерійський дивізіон"));
$OKW.Add("ВЧ2122", @("Штаб", "1 батальйон", "2 батальйон", "3 батальйон", "Танковий батальйон", "Артилерійський дивізіон"));
$OKW.Add("ВЧ0998", @("Штаб", "1 батальйон", "2 батальйон", "3 батальйон", "Танковий батальйон", "Артилерійський дивізіон"));
$OKW.Add("ВЧ3123", @("Штаб", "1 батальйон", "2 батальйон", "3 батальйон", "Танковий батальйон", "Артилерійський дивізіон"));
$OKW.Add("ВЧ1232", @("Штаб", "1 батальйон", "2 батальйон", "3 батальйон", "Танковий батальйон", "Артилерійський дивізіон"));

$OKE.Add("Командування ОК Схід", @("Командування", "Штаб", "1 управління", "2 управління", "3 управління"));
$OKE.Add("ВЧ9832", @("Штаб", "1 батальйон", "2 батальйон", "3 батальйон", "Танковий батальйон", "Артилерійський дивізіон"));
$OKE.Add("ВЧ9831", @("Штаб", "1 батальйон", "2 батальйон", "3 батальйон", "Танковий батальйон", "Артилерійський дивізіон"));
$OKE.Add("ВЧ6452", @("Штаб", "1 батальйон", "2 батальйон", "3 батальйон", "Танковий батальйон", "Артилерійський дивізіон"));
$OKE.Add("ВЧ3128", @("Штаб", "1 батальйон", "2 батальйон", "3 батальйон", "Танковий батальйон", "Артилерійський дивізіон"));
$OKE.Add("ВЧ0645", @("Штаб", "1 батальйон", "2 батальйон", "3 батальйон", "Танковий батальйон", "Артилерійський дивізіон"));

$OKN.Add("Командування ОК Північ", @("Командування", "Штаб", "1 управління", "2 управління", "3 управління"));
$OKN.Add("ВЧ4363", @("Штаб", "1 батальйон", "2 батальйон", "3 батальйон", "Танковий батальйон", "Артилерійський дивізіон"));
$OKN.Add("ВЧ7846", @("Штаб", "1 батальйон", "2 батальйон", "3 батальйон", "Танковий батальйон", "Артилерійський дивізіон"));
$OKN.Add("ВЧ0746", @("Штаб", "1 батальйон", "2 батальйон", "3 батальйон", "Танковий батальйон", "Артилерійський дивізіон"));
$OKN.Add("ВЧ1286", @("Штаб", "1 батальйон", "2 батальйон", "3 батальйон", "Танковий батальйон", "Артилерійський дивізіон"));
$OKN.Add("ВЧ0715", @("Штаб", "1 батальйон", "2 батальйон", "3 батальйон", "Танковий батальйон", "Артилерійський дивізіон"));

$OKS.Add("Командування ОК Південь", @("Командування", "Штаб", "1 управління", "2 управління", "3 управління"));
$OKS.Add("ВЧ5935", @("Штаб", "1 батальйон", "2 батальйон", "3 батальйон", "Танковий батальйон", "Артилерійський дивізіон"));
$OKS.Add("ВЧ0754", @("Штаб", "1 батальйон", "2 батальйон", "3 батальйон", "Танковий батальйон", "Артилерійський дивізіон"));
$OKS.Add("ВЧ0903", @("Штаб", "1 батальйон", "2 батальйон", "3 батальйон", "Танковий батальйон", "Артилерійський дивізіон"));
$OKS.Add("ВЧ3234", @("Штаб", "1 батальйон", "2 батальйон", "3 батальйон", "Танковий батальйон", "Артилерійський дивізіон"));
$OKS.Add("ВЧ6745", @("Штаб", "1 батальйон", "2 батальйон", "3 батальйон", "Танковий батальйон", "Артилерійський дивізіон"));

$GF.Add("Командування сухопутних військ", @("Командування", "Штаб", "1 управління", "2 управління", "3 управління", "4 управління", "5 управління"));
$GF.Add("ОК Захід", $OKW);
$GF.Add("ОК Схід", $OKE);
$GF.Add("ОК Північ", $OKN);
$GF.Add("ОК Південь", $OKS);
$AFU.Add("Сухопутні війська", $GF);

$AF = New-Object System.Collections.Specialized.OrderedDictionary;
$AF.Add("Командування повітряних сил", @("Командування", "Штаб", "1 управління", "2 управління", "3 управління", "4 управління", "5 управління"));
$AF.Add("10 полк стратегічної авіації", @("Штаб", "1 ескадрилья", "2 ескадрилья", "3 ескадрилья", "Ремонтна група", "Група матеріального забезпечення"));
$AF.Add("14 полк стратегічної авіації", @("Штаб", "1 ескадрилья", "2 ескадрилья", "3 ескадрилья", "Ремонтна група", "Група матеріального забезпечення"));
$AF.Add("7 ескадрилья винищувальної авіації", @("Штаб", "1 ескадрилья", "2 ескадрилья", "3 ескадрилья", "Ремонтна група", "Група матеріального забезпечення"));
$AF.Add("23 полк дальньої авіації", @("Штаб", "1 ескадрилья", "2 ескадрилья", "3 ескадрилья", "Ремонтна група", "Група матеріального забезпечення"));
$AF.Add("12 база забезпечення", @("Група ремонту винищувальної авіації", "Група ремонту бомбардувальників", "Група ремонту гвинтокрилів", "Відділення планування"));
$AFU.Add("Повітряні сили", $AF);

$NF = New-Object System.Collections.Specialized.OrderedDictionary;
$NF.Add("Командування військово-морських сил", @("Командування", "Штаб", "1 управління", "2 управління", "3 управління", "4 управління", "5 управління"));
$NF.Add("32 морська база", @("Штаб", "1 флотилія", "2 флотилія", "3 флотилія", "Флотилія малих катерів"));
$NF.Add("43 морська база", @("Штаб", "1 флотилія", "2 флотилія", "3 флотилія", "Флотилія малих катерів"));
$NF.Add("Миколаївський судноремонтний завод", @("Група ремонту великих катерів", "Група ремонту малих катерів"));
$AFU.Add("Військово-морські сили", $NF);

$MFA = New-Object System.Collections.Specialized.OrderedDictionary;
$MFA.Add("Командування ракетних військ та артилерії", @("Командування", "Штаб", "1 управління", "2 управління", "3 управління", "4 управління", "5 управління"));
$MFA.Add("7 бригада реактивної артилерії", @("Штаб", "1 дивізіон", "2 дивізіон", "3 дивізіон"));
$MFA.Add("25 бригада реактивної артилерії", @("Штаб", "1 дивізіон", "2 дивізіон", "3 дивізіон"));
$MFA.Add("45 артилерійська бригада", @("Штаб", "1 дивізіон", "2 дивізіон", "3 дивізіон"));
$MFA.Add("28 артилерійська бригада", @("Штаб", "1 дивізіон", "2 дивізіон", "3 дивізіон"));
$AFU.Add("Ракетні війська та артилерія", $MFA);

$SSO = New-Object System.Collections.Specialized.OrderedDictionary;
$SSO.Add("Командування сил спеціальних операцій", @("Командування", "Штаб", "1 управління", "2 управління", "3 управління", "4 управління", "5 управління"));
$SSO.Add("3 полк ССО", @("Штаб", "1 батальйон", "2 батальйон", "Розвідувальна рота", "Польовий вузол звʼязку", "Група БПЛА"));
$SSO.Add("5 полк ССО", @("Штаб", "1 батальйон", "2 батальйон", "Розвідувальна рота", "Польовий вузол звʼязку"));
$SSO.Add("11 полк ССО", @("Штаб", "1 батальйон", "2 батальйон", "Розвідувальна рота", "Польовий вузол звʼязку"));
$SSO.Add("12 полк ІПСО", @("Штаб", "1 батальйон", "2 батальйон", "Розвідувальна рота", "Польовий вузол звʼязку"));
$AFU.Add("Сили спеціальних операцій", $SSO);

$CCT = New-Object System.Collections.Specialized.OrderedDictionary;
$CCT.Add("Командування військ звʼязку та кібербезпеки", @("Командування", "Штаб", "1 управління", "2 управління", "3 управління", "4 управління", "5 управління"));
$CCT.Add("Військовий інститут телекомунікацій та інформатизації", @("Командування", "Управління", "1 факультет", "2 факультет", "3 факультет"));
$CCT.Add("ВЧ0351", @("1 батальйон звʼязку", "2 батальйон звʼязку", "Рота тропосферного звʼязку", "Лінійна рота"));
$CCT.Add("ВЧ0215", @("1 батальйон звʼязку", "2 батальйон звʼязку", "Рота тропосферного звʼязку", "Лінійна рота"));
$CCT.Add("ВЧ4721", @("1 батальйон звʼязку", "2 батальйон звʼязку", "Рота тропосферного звʼязку", "Лінійна рота"));
$CCT.Add("ВЧ0683", @("1 батальйон звʼязку", "2 батальйон звʼязку", "Рота тропосферного звʼязку", "Лінійна рота"));
$CCT.Add("10 полк забезпечення звʼяку ГШ ЗСУ", @("1 батальйон звʼязку", "2 батальйон звʼязку", "3 батальйон звʼязку", "Рота тропосферного звʼязку", "Лінійна рота"));
$AFU.Add("Війська звʼязку та кібербезпеки", $CCT);

function CreateUnits
{
    param($structure, $units, $parentOU, $parentGroup, $indexGroup, $indexUser)

    $nameStructure = $structure;
    New-ADOrganizationalUnit -Name $nameStructure -Path $parentOU;
    $structureOU = "OU=$nameStructure,$parentOU";
    $indexGroup++;
    $structureGroup = "Group$( $indexGroup )";
    New-ADGroup -Name $structureGroup -GroupCategory Security -GroupScope Global -Path $structureOU;
    Add-ADGroupMember -Identity $parentGroup -Members $structureGroup;

    foreach ($unit in $units)
    {
        $nameUnit = $unit;
        New-ADOrganizationalUnit -Name $nameUnit -Path $structureOU;
        $unitOU = "OU=$nameUnit,$structureOU";
        $indexGroup++;
        $unitGroup = "Group$( $indexGroup )";
        New-ADGroup -Name $unitGroup -GroupCategory Security -GroupScope Global -Path $unitOU;
        Add-ADGroupMember -Identity $structureGroup -Members $unitGroup;

        for($k = $indexUser; $k -le $indexUser + 2; $k++){
            $userPass = ConvertTo-SecureString -String "PaSSword123!" -AsPlainText -Force;
            $userName = "User$( $k )";
            New-ADUser -Path $unitOU -Name $userName -SamAccountName $userName -AccountPassword $userPass -Enabled $true;
            Add-ADGroupMember -Identity $unitGroup -Members $userName;
        }

        $indexUser += 3;
    }

    return [pscustomobject]@{
        IndexGroup = $indexGroup
        IndexUser = $indexUser
    };
}

function CreatOK
{
    param($OK, $structures, $parent, $parentOU, $parentGroup, $indexGroup, $indexUser)
    $nameOK = $OK;
    New-ADOrganizationalUnit -Name $nameOK -Path $parentOU;
    $okOU = "OU=$nameOK,$parentOU";
    $indexGroup++;
    $okGroup = "Group$( $indexGroup )";
    New-ADGroup -Name $okGroup -GroupCategory Security -GroupScope Global -Path $okOU;
    Add-ADGroupMember -Identity $parentGroup -Members $okGroup;

    foreach ($structure in $structures)
    {
        $units = $AFU[$parent][$OK][$structure];
        $result = CreateUnits -structure $structure -units $units -parentOU $okOU -parentGroup $okGroup -indexGroup $indexGroup -indexUser $indexUser;
        $indexGroup = $result.IndexGroup;
        $indexUser = $result.IndexUser;
    }

    return [pscustomobject]@{
        IndexGroup = $indexGroup
        IndexUser = $indexUser
    };
}

$rootOU = "OU=Test,DC=test14,DC=local";

$StartGroupNumber = 0;
$StartUserNumber = 1;

foreach ($key in $AFU.Keys)
{
    New-ADOrganizationalUnit -Name $key -Path $rootOU;
    $mainOU = "OU=$( $key ),$( $rootOU )";
    $StartGroupNumber++;
    $mainGroup = "Group$( $StartGroupNumber )";
    New-ADGroup -Name $mainGroup -GroupCategory Security -GroupScope Global -Path $mainOU;

    foreach ($key2 in $AFU[$key].Keys)
    {
        $structure = $key2;
        $units = $AFU[$key][$key2];
        $type = $units.GetType().Name;
        if ($type -eq "Object[]")
        {
            $result = CreateUnits -structure $structure -units $units -parentOU $mainOU -parentGroup $mainGroup -indexGroup $StartGroupNumber -indexUser $StartUserNumber;
            $StartGroupNumber = $result.IndexGroup;
            $StartUserNumber = $result.IndexUser;
        }
        else
        {
            $parent = $key;
            $OK = $key2;
            $structures = $AFU[$key][$OK];
            $result = CreatOK -OK $OK -structures $structures -parent $parent -parentOU $mainOU -parentGroup $mainGroup -indexGroup $StartGroupNumber -indexUser $StartUserNumber;
            $StartGroupNumber = $result.IndexGroup;
            $StartUserNumber = $result.IndexUser;
        }
    }
}