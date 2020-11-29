# Get self, then cycle through homes.
# If it exists, it will return [2], otherwise it will return [3]
# If [3], return failure
# If [2], prepare to teleport
function rx.playerdb:api/get_self
scoreboard players operation #cycle.input se.internal = @s home
scoreboard players set #cycle.success se.internal 3
execute if score #cycle.input se.internal <= @s se.player run function se:home/cycle
execute if score #cycle.success se.internal matches 3 run tellraw @s ["",{"text":"[Homes] ","color":"green"},{"text":"Home "},{"score":{"name":"#cycle.input","objective":"se.internal"},"color":"gold"},{"text":" does not exist."}]
execute if score #cycle.success se.internal matches 2 run function se:home/teleport/step