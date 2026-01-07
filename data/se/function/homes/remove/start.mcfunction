execute store result storage se:storage query.val int -1 run scoreboard players get @s sethome
data modify storage se:storage query.UUID set from entity @s UUID
function se:homes/remove/validate with storage se:storage query