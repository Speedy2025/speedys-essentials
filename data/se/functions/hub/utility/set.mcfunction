#rx.io player.data.se.hub.{parameter}
execute store result storage rx.playerdb:io player.data.se.hub.dim int 1 run data get entity @s Dimension
execute store result storage rx.playerdb:io player.data.se.hub.x double 0.01 run data get entity @s Pos[0] 100
execute store result storage rx.playerdb:io player.data.se.hub.y double 0.01 run data get entity @s Pos[1] 100
execute store result storage rx.playerdb:io player.data.se.hub.z double 0.01 run data get entity @s Pos[2] 100
execute store result storage rx.playerdb:io player.data.se.hub.rx float 0.01 run data get entity @s Rotation[0] 100
execute store result storage rx.playerdb:io player.data.se.hub.rz float 0.01 run data get entity @s Rotation[1] 100
tellraw @s ["",{"text":"[Hubs] ","color":"green"},{"text":"Hub set to "},{"nbt":"player.data.se.hub.x","storage":"rx.playerdb:io","color":"gold"},{"text":" "},{"nbt":"player.data.se.hub.y","storage":"rx.playerdb:io","color":"gold"},{"text":" "},{"nbt":"player.data.se.hub.z","storage":"rx.playerdb:io","color":"gold"},{"text":"."}]
