function rx.playerdb:api/get_self
scoreboard players operation #cycle.input se.internal = @s home
scoreboard players set #cycle.success se.internal 3
execute if score #cycle.input se.internal <= @s se.player run function se:home/cycle
execute if score #cycle.success se.internal matches 3 run tellraw @s ["",{"text":"[Homes] ","color":"green"},{"text":"Home "},{"score":{"name":"#cycle.input","objective":"se.internal"},"color":"gold"},{"text":" does not exist."}]
execute if score #cycle.success se.internal matches 2 in minecraft:overworld run function se:home/teleport/action