#rx.io playerdb.player.data.se.hub.{parameter}
execute store result storage rx:io playerdb.player.data.se.hub.dim int 1 run data get entity @s Dimension
execute store result storage rx:io playerdb.player.data.se.hub.x int 1 run data get entity @s Pos[0] 1
execute store result storage rx:io playerdb.player.data.se.hub.y int 1 run data get entity @s Pos[1] 1
execute store result storage rx:io playerdb.player.data.se.hub.z int 1 run data get entity @s Pos[2] 1
execute store result storage rx:io playerdb.player.data.se.hub.rx int 1 run data get entity @s Rotation[0] 1
execute store result storage rx:io playerdb.player.data.se.hub.rz int 1 run data get entity @s Rotation[1] 1
tellraw @s ["",{"text":"[Hubs] ","color":"green"},{"text":"Hub set to "},{"nbt":"playerdb.player.data.se.hub.x","storage":"rx:io","color":"gold"},{"text":" "},{"nbt":"playerdb.player.data.se.hub.y","storage":"rx:io","color":"gold"},{"text":" "},{"nbt":"playerdb.player.data.se.hub.z","storage":"rx:io","color":"gold"},{"text":"."}]
