﻿$AFU = New-Object System.Collections.Specialized.OrderedDictionary;

$AFU.Add("Міністерство оборони", @{
    "Департамент фінансового забезпечення" = @("Управління департаменту","Секретаріат","1 відділ","2 відділ","3 відділ");
    "Департамент правового забезпечення" = @("Управління департаменту","Секретаріат","1 відділ","2 відділ","3 відділ");
    "Департамент тилового забезпечення" = @("Управління департаменту","Секретаріат","1 відділ","2 відділ","3 відділ");
    "Департамент міжнародного співробітництва" = @("Управління департаменту","Секретаріат","1 відділ","2 відділ","3 відділ");
    "Департамент стратегічного планування" = @("Управління департаменту","Секретаріат","1 відділ","2 відділ","3 відділ");
});
$AFU.Add("Генеральний штаб", @{
    "Управління фінансового забезпечення" = @("Управління","Секретаріат","1 відділ","2 відділ","3 відділ");
    "Управління правового забезпечення" = @("Управління","Секретаріат","1 відділ","2 відділ","3 відділ");
    "Управління тилового забезпечення" = @("Управління","Секретаріат","1 відділ","2 відділ","3 відділ");
    "Управління міжнародного співробітництва" = @("Управління","Секретаріат","1 відділ","2 відділ","3 відділ");
    "Управління стратегічного планування" = @("Управління","Секретаріат","1 відділ","2 відділ","3 відділ");
});
$AFU.Add("Сухопутні війська", @{
    "Командування сухопутних військ" = @("Командування","Штаб","1 управління","2 управління","3 управління","4 управління","5 управління");
    "ОК Захід" = @{
        "Командування ОК Захід" = @("Командування","Штаб","1 управління","2 управління","3 управління");
        "ВЧ4531" = @("Штаб","1 батальйон","2 батальйон","3 батальйон","Танковий батальйон","Артилерійський дивізіон");
        "ВЧ2122" = @("Штаб","1 батальйон","2 батальйон","3 батальйон","Танковий батальйон","Артилерійський дивізіон");
        "ВЧ0998" = @("Штаб","1 батальйон","2 батальйон","3 батальйон","Танковий батальйон","Артилерійський дивізіон");
        "ВЧ3123" = @("Штаб","1 батальйон","2 батальйон","3 батальйон","Танковий батальйон","Артилерійський дивізіон");
        "ВЧ1232" = @("Штаб","1 батальйон","2 батальйон","3 батальйон","Танковий батальйон","Артилерійський дивізіон");
    };
    "ОК Схід" = @{
        "Командування ОК Схід" = @("Командування","Штаб","1 управління","2 управління","3 управління");
        "ВЧ9832" = @("Штаб","1 батальйон","2 батальйон","3 батальйон","Танковий батальйон","Артилерійський дивізіон");
        "ВЧ9831" = @("Штаб","1 батальйон","2 батальйон","3 батальйон","Танковий батальйон","Артилерійський дивізіон");
        "ВЧ6452" = @("Штаб","1 батальйон","2 батальйон","3 батальйон","Танковий батальйон","Артилерійський дивізіон");
        "ВЧ3128" = @("Штаб","1 батальйон","2 батальйон","3 батальйон","Танковий батальйон","Артилерійський дивізіон");
        "ВЧ0645" = @("Штаб","1 батальйон","2 батальйон","3 батальйон","Танковий батальйон","Артилерійський дивізіон");
    };
    "ОК Північ" = @{
        "Командування ОК Північ" = @("Командування","Штаб","1 управління","2 управління","3 управління");
        "ВЧ4363" = @("Штаб","1 батальйон","2 батальйон","3 батальйон","Танковий батальйон","Артилерійський дивізіон");
        "ВЧ7846" = @("Штаб","1 батальйон","2 батальйон","3 батальйон","Танковий батальйон","Артилерійський дивізіон");
        "ВЧ0746" = @("Штаб","1 батальйон","2 батальйон","3 батальйон","Танковий батальйон","Артилерійський дивізіон");
        "ВЧ1286" = @("Штаб","1 батальйон","2 батальйон","3 батальйон","Танковий батальйон","Артилерійський дивізіон");
        "ВЧ0715" = @("Штаб","1 батальйон","2 батальйон","3 батальйон","Танковий батальйон","Артилерійський дивізіон");
    };
    "ОК Південь" = @{
        "Командування ОК Південь" = @("Командування", "Штаб", "1 управління", "2 управління", "3 управління");
        "ВЧ5935" = @("Штаб", "1 батальйон", "2 батальйон", "3 батальйон", "Танковий батальйон", "Артилерійський дивізіон");
        "ВЧ0754" = @("Штаб", "1 батальйон", "2 батальйон", "3 батальйон", "Танковий батальйон", "Артилерійський дивізіон");
        "ВЧ0903" = @("Штаб", "1 батальйон", "2 батальйон", "3 батальйон", "Танковий батальйон", "Артилерійський дивізіон");
        "ВЧ3234" = @("Штаб", "1 батальйон", "2 батальйон", "3 батальйон", "Танковий батальйон", "Артилерійський дивізіон");
        "ВЧ6745" = @("Штаб", "1 батальйон", "2 батальйон", "3 батальйон", "Танковий батальйон", "Артилерійський дивізіон");
    };
});
$AFU.Add("Повітряні сили", @{
    "Командування повітряних сил" = @("Командування","Штаб","1 управління","2 управління","3 управління","4 управління","5 управління");
    "10 полк стратегічної авіації" = @("Штаб","1 ескадрилья","2 ескадрилья","3 ескадрилья","Ремонтна група","Група матеріального забезпечення");
    "14 полк стратегічної авіації" = @("Штаб","1 ескадрилья","2 ескадрилья","3 ескадрилья","Ремонтна група","Група матеріального забезпечення");
    "7 ескадрилья винищувальної авіації" = @("Штаб","1 ескадрилья","2 ескадрилья","3 ескадрилья","Ремонтна група","Група матеріального забезпечення");
    "23 полк дальньої авіації" = @("Штаб","1 ескадрилья","2 ескадрилья","3 ескадрилья","Ремонтна група","Група матеріального забезпечення");
    "12 база забезпечення" = @("Група ремонту винищувальної авіації","Група ремонту бомбардувальників","Група ремонту гвинтокрилів","Відділення планування");
});
$AFU.Add("Військово-морські сили", @{
    "Командування військово-морських сил" = @("Командування", "Штаб", "1 управління", "2 управління", "3 управління", "4 управління", "5 управління");
    "32 морська база" = @("Штаб", "1 флотилія", "2 флотилія", "3 флотилія", "Флотилія малих катерів");
    "43 морська база" = @("Штаб", "1 флотилія", "2 флотилія", "3 флотилія", "Флотилія малих катерів");
    "Миколаївський судноремонтний завод" = @("Група ремонту великих катерів", "Група ремонту малих катерів");
});
$AFU.Add("Ракетні війська та артилерія", @{
    "Командування ракетних військ та артилерії" = @("Командування","Штаб","1 управління","2 управління","3 управління","4 управління","5 управління");
    "7 бригада реактивної артилерії" = @("Штаб","1 дивізіон","2 дивізіон","3 дивізіон");
    "25 бригада реактивної артилерії" = @("Штаб","1 дивізіон","2 дивізіон","3 дивізіон");
    "45 артилерійська бригада" = @("Штаб","1 дивізіон","2 дивізіон","3 дивізіон");
    "28 артилерійська бригада" = @("Штаб","1 дивізіон","2 дивізіон","3 дивізіон");
});
$AFU.Add("Сили спеціальних операцій", @{
    "Командування сил спеціальних операцій" = @("Командування","Штаб","1 управління","2 управління","3 управління","4 управління","5 управління");
    "3 полк ССО" = @("Штаб","1 батальйон","2 батальйон","Розвідувальна рота","Польовий вузол звʼязку","Група БПЛА");
    "5 полк ССО" = @("Штаб","1 батальйон","2 батальйон","Розвідувальна рота","Польовий вузол звʼязку");
    "11 полк ССО" = @("Штаб","1 батальйон","2 батальйон","Розвідувальна рота","Польовий вузол звʼязку");
    "12 полк ІПСО" = @("Штаб","1 батальйон","2 батальйон","Розвідувальна рота","Польовий вузол звʼязку");
});
$AFU.Add("Війська звʼязку та кібербезпеки", @{
    "Командування військ звʼязку та кібербезпеки" = @("Командування","Штаб","1 управління","2 управління","3 управління","4 управління","5 управління");
    "Військовий інститут телекомунікацій та інформатизації" = @("Командування","Управління","1 факультет","2 факультет","3 факультет");
    "ВЧ0351" = @("1 батальйон звʼязку","2 батальйон звʼязку","Рота тропосферного звʼязку","Лінійна рота");
    "ВЧ0215" = @("1 батальйон звʼязку","2 батальйон звʼязку","Рота тропосферного звʼязку","Лінійна рота");
    "ВЧ4721" = @("1 батальйон звʼязку","2 батальйон звʼязку","Рота тропосферного звʼязку","Лінійна рота");
    "ВЧ0683" = @("1 батальйон звʼязку","2 батальйон звʼязку","Рота тропосферного звʼязку","Лінійна рота");
    "10 полк забезпечення звʼяку ГШ ЗСУ" = @("1 батальйон звʼязку","2 батальйон звʼязку","3 батальйон звʼязку","Рота тропосферного звʼязку","Лінійна рота");
});

$rootOU = "OU=Test,DC=test14,DC=local";

$StartGroupNumber
$StartUserNumber

foreach($key in $AFU.Keys){
    New-ADOrganizationalUnit -Name $key -Path $rootOU;
    $mainOU = "OU=$($key),$($rootOU)";
    $mainGroup = "Group$($StartGroupNumber)";
    New-ADGroup -Name $mainGroup -GroupCategory Security -GroupScope Global -Path $mainOU;
}