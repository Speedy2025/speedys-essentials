# A cleaner method suggested by the folks at MCC
#Called by se:home/teleport/action
#Calls se:dimswap
execute store result entity @s Pos[0] double 0.01 run data get storage rx:io playerdb.player.data.se.homes[0].x 100
execute store result entity @s Pos[1] double 0.01 run data get storage rx:io playerdb.player.data.se.homes[0].y 100
execute store result entity @s Pos[2] double 0.01 run data get storage rx:io playerdb.player.data.se.homes[0].z 100
execute store result entity @s Rotation[0] float 0.01 run data get storage rx:io playerdb.player.data.se.homes[0].rx 100
execute store result entity @s Rotation[1] float 0.01 run data get storage rx:io playerdb.player.data.se.homes[0].rz 100
execute store result score @a[tag=se.target] se.player run data get storage rx:io playerdb.player.data.se.homes[0].dim
execute positioned as @s run tp @a[tag=se.target,limit=1] @s
kill @e[tag=se.teleport]
execute as @a[tag=se.target] positioned as @s run function se:dimswap