# A cleaner method suggested by the folks at MCC
#Called by se:home/teleport/action
#Calls se:dimswap
execute store result entity @s Pos[0] int 1 run data get storage rx:io playerdb.player.data.se.homes[0].x
execute store result entity @s Pos[1] int 1 run data get storage rx:io playerdb.player.data.se.homes[0].y
execute store result entity @s Pos[2] int 1 run data get storage rx:io playerdb.player.data.se.homes[0].z
execute store result entity @s Rotation[0] float 0.01 run data get storage rx:io playerdb.player.data.se.homes[0].rx
execute store result entity @s Rotation[1] float 0.01 run data get storage rx:io playerdb.player.data.se.homes[0].rz
execute store result score @s se.player run data get storage rx:io playerdb.player.data.se.homes[0].dim
function se:dimswap
execute positioned as @s run tp @a[tag=se.target,limit=1] @s
kill @s