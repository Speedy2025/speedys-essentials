tag @s add se.target
say Premature Ping
execute at @s run summon area_effect_cloud ~ 0 ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["se.teleport"]}
say AEC: @e[tag=se.teleport]
execute as @e[type=area_effect_cloud,tag=se.teleport] run function se:home/teleport/action
tag @s remove se.target