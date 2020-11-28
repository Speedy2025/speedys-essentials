# Catching rx/rz
execute as @s run summon area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["se.rotation"]}
execute store result entity @e[type=area_effect_cloud,tag=se.rotation,limit=1] Rotation[0] float 1 run scoreboard players get @s se.player.rx
execute store result entity @e[type=area_effect_cloud,tag=se.rotation,limit=1] Rotation[1] float 1 run scoreboard players get @s se.player.rz
tp @s @e[type=area_effect_cloud,tag=se.rotation,limit=1]
kill @e[type=area_effect_cloud,tag=se.rotation]