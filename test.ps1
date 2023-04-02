$groups = @();
$users = @();
$IndexUser = 1;

for($i = 0; $i -le 3){
    $i++;
    $groups+= "Group$i";

    for ($j = $IndexUser; $j -lt $IndexUser+3; $j++) {
        $users+= "User$j";
    }

    $IndexUser += 3;
};

$groups;
$users;