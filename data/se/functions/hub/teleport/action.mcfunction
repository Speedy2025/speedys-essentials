#setblock 0 1 0 end_gateway{ExactTeleport:1b,ExitPortal:{X:0,Y:-5,Z:0}}
data modify block 0 1 0 ExitPortal set value {X:0,Y:-5,Z:0}
execute store result block 0 1 0 ExitPortal.X int 1 run data get storage rx:io playerdb.player.data.se.hub.x
execute store result block 0 1 0 ExitPortal.Y int 1 run data get storage rx:io playerdb.player.data.se.hub.y
execute store result block 0 1 0 ExitPortal.Z int 1 run data get storage rx:io playerdb.player.data.se.hub.z
execute store result score @s se.player run data get storage rx:io playerdb.player.data.se.hub.dim
execute store result score @s se.player.rx run data get storage rx:io playerdb.player.data.se.hub.rx
execute store result score @s se.player.rz run data get storage rx:io playerdb.player.data.se.hub.rz
tag @s add se.dimswap
tp @s 0 1 0
tellraw @s ["",{"text":"[Hubs] ","color":"green"},{"text":"Teleported to "},{"storage":"rx:io","nbt":"playerdb.player.info.name","color":"gold"},{"text":"'s hub."}]