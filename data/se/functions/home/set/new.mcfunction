data modify storage rx:io playerdb.player.data.se.homes prepend value {id:-1,x:0,y:0,z:0,dim:17}
#rx.io playerdb.player.data.se.homes[0].{parameter}
execute store result storage rx:io playerdb.player.data.se.homes[{id: -1}].dim int 1 run data get entity @s Dimension
execute store result storage rx:io playerdb.player.data.se.homes[{id: -1}].x int 1 run data get entity @s Pos[0] 1
execute store result storage rx:io playerdb.player.data.se.homes[{id: -1}].y int 1 run data get entity @s Pos[1] 1
execute store result storage rx:io playerdb.player.data.se.homes[{id: -1}].z int 1 run data get entity @s Pos[2] 1
execute store result storage rx:io playerdb.player.data.se.homes[{id: -1}].rx int 1 run data get entity @s Rotation[0] 1
execute store result storage rx:io playerdb.player.data.se.homes[{id: -1}].rz int 1 run data get entity @s Rotation[1] 1
execute store result storage rx:io playerdb.player.data.se.homes[{id: -1}].id int 1 run scoreboard players get #cycle.input se.internal
tellraw @s ["",{"text":"[Homes] ","color":"green"},{"text":"Saved home "},{"score":{"name":"#cycle.input","objective":"se.internal"},"color":"gold"},{"text":" to "},{"nbt":"playerdb.player.data.se.homes[0].x","storage":"rx:io","color":"gold"},{"text":" "},{"nbt":"playerdb.player.data.se.homes[0].y","storage":"rx:io","color":"gold"},{"text":" "},{"nbt":"playerdb.player.data.se.homes[0].z","storage":"rx:io","color":"gold"},{"text":"."}]
function rx.playerdb:api/save_self