$collectionUnits = @("Департамент фінансового забезпечення", "Департамент правового забезпечення", 
    "Департамент тилового забезпечення", "Департамент міжнародного співробітництва", "Департамент стратегічного планування");
$collectionStuctureUnit = @("Управління департаменту","Секретаріат","1 відділ","2 відділ","3 відділ");

$unitsLenght = $collectionUnits.Length;

$pathOU = "OU=Test,DC=test14,DC=local";
$structureName = "Міністерство оборони";

$mainOU = "OU=$structureName,$pathOU";
function TestFunc {
    param (
        [Parameter(Mandatory=$true)]
        [int]$StartIndexGroup
    )
    for ($i = $StartIndexGroup; $i -le $unitsLenght+$StartIndexGroup; $i++) {
        $nameOU = $collectionUnits[$i-$StartIndexGroup];
        Write-Host "OU=$nameOU,$mainOU";
    }
}

TestFunc -StartIndexGroup 2;