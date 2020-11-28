function rx.playerdb:api/get_self
scoreboard players operation #cycle.input se.internal = @s home
scoreboard players operation #cycle.input se.internal *= #const.-1 se.internal
scoreboard players set #cycle.success se.internal 1
execute if score #cycle.input se.internal <= @s se.player run function se:home/cycle
execute if score #cycle.success se.internal matches 1 run tellraw @s ["",{"text":"[Homes] ","color":"green"},{"text":"Sorry, you cannot set that home. You currently can have up to "},{"score":{"name":"@s","objective":"se.player"},"color":"gold"},{"text":" homes."}]
execute if score #cycle.success se.internal matches 2 run function se:home/set/modify
execute if score #cycle.success se.internal matches 3 run function se:home/set/new