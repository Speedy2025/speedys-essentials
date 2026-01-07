#Macros
$execute store result storage se:storage query.val int 1 run data get storage se:storage vals[{UUID: $(UUID)}].homes[$(index)].id
function se:homes/menu/loop/iterate with storage se:storage query