#rx.io playerdb.player.data.se.homes[0].{parameter}
execute store result storage rx:io playerdb.player.data.se.homes[0].dim int 1 run data get entity @s Dimension
execute store result storage rx:io playerdb.player.data.se.homes[0].x int 1 run data get entity @s Pos[0] 1
execute store result storage rx:io playerdb.player.data.se.homes[0].y int 1 run data get entity @s Pos[1] 1
execute store result storage rx:io playerdb.player.data.se.homes[0].z int 1 run data get entity @s Pos[2] 1
execute store result storage rx:io playerdb.player.data.se.homes[0].rx int 1 run data get entity @s Rotation[0] 100
execute store result storage rx:io playerdb.player.data.se.homes[0].rz int 1 run data get entity @s Rotation[1] 100

tellraw @s ["",{"text":"[Homes] ","color":"green"},{"text":"Saved home "},{"score":{"name":"#cycle.input","objective":"se.internal"},"color":"gold"},{"text":" to "},{"nbt":"playerdb.player.data.se.homes[0].x","storage":"rx:io","color":"gold"},{"text":" "},{"nbt":"playerdb.player.data.se.homes[0].y","storage":"rx:io","color":"gold"},{"text":" "},{"nbt":"playerdb.player.data.se.homes[0].z","storage":"rx:io","color":"gold"},{"text":"."}]
function rx.playerdb:api/save_self