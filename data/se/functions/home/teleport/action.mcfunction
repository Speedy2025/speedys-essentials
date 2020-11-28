#setblock 0 1 0 end_gateway{ExactTeleport:1b,ExitPortal:{X:0,Y:-5,Z:0}}
data modify block 0 1 0 ExitPortal set value {X:0,Y:-5,Z:0}
execute store result block 0 1 0 ExitPortal.X int 1 run data get storage rx:io playerdb.player.data.se.homes[0].x
execute store result block 0 1 0 ExitPortal.Y int 1 run data get storage rx:io playerdb.player.data.se.homes[0].y
execute store result block 0 1 0 ExitPortal.Z int 1 run data get storage rx:io playerdb.player.data.se.homes[0].z
execute store result score @s se.player run data get storage rx:io playerdb.player.data.se.homes[0].dim
execute store result score @s se.player.rx run data get storage rx:io playerdb.player.data.se.homes[0].rx
execute store result score @s se.player.rz run data get storage rx:io playerdb.player.data.se.homes[0].rz
tag @s add se.dimswap
tp @s 0 1 0