data modify storage rx:io playerdb.player.data.se.homes prepend value {id:-1,x:0,y:0,z:0,dim:17}
#rx.io playerdb.player.data.se.homes[0].{parameter}
execute store result storage rx:io playerdb.player.data.se.homes[{id: -1}].dim int 1 run data get entity @s Dimension
execute store result storage rx:io playerdb.player.data.se.homes[{id: -1}].x double 0.01 run data get entity @s Pos[0] 100
execute store result storage rx:io playerdb.player.data.se.homes[{id: -1}].y double 0.01 run data get entity @s Pos[1] 100
execute store result storage rx:io playerdb.player.data.se.homes[{id: -1}].z double 0.01 run data get entity @s Pos[2] 100
execute store result storage rx:io playerdb.player.data.se.homes[{id: -1}].rx float 0.01 run data get entity @s Rotation[0] 100
execute store result storage rx:io playerdb.player.data.se.homes[{id: -1}].rz float 0.01 run data get entity @s Rotation[1] 100
execute store result storage rx:io playerdb.player.data.se.homes[{id: -1}].id int 1 run scoreboard players get #cycle.input se.internal
tellraw @s ["",{"text":"[Homes] ","color":"green"},{"text":"Saved home "},{"score":{"name":"#cycle.input","objective":"se.internal"},"color":"gold"},{"text":"."}]
function rx.playerdb:api/save_self