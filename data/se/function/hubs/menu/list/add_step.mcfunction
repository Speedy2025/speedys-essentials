data modify storage se:storage query.UUID set from entity @s UUID
execute store result storage se:storage query.val int 1 run scoreboard players get @s hub
function se:hubs/menu/list/add with storage se:storage query