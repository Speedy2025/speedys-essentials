# A cleaner method suggested by the folks at MCC
#Called by se:home/teleport/action
#Calls se:dimswap
execute store result entity @s Pos[0] double 1 run data get storage rx:io playerdb.player.data.se.hub.x
execute store result entity @s Pos[1] double 1 run data get storage rx:io playerdb.player.data.se.hub.y
execute store result entity @s Pos[2] double 1 run data get storage rx:io playerdb.player.data.se.hub.z
execute store result entity @s Rotation[0] float 0.01 run data get storage rx:io playerdb.player.data.se.hub.rx
execute store result entity @s Rotation[1] float 0.01 run data get storage rx:io playerdb.player.data.se.hub.rz
execute store result score @s se.player run data get storage rx:io playerdb.player.data.se.hub.dim
function se:dimswap
tp @a[tag=se.target] @s
kill @s
tellraw @a[tag=se.target] ["",{"text":"[Hubs] ","color":"green"},{"text":"Teleported to "},{"storage":"rx:io","nbt":"playerdb.player.info.name","color":"gold"},{"text":"'s hub."}]