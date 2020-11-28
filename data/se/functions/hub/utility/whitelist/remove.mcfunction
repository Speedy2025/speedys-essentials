# Set Input, Run through whitelist checker
scoreboard players set #hub.whitelisted se.internal 0
scoreboard players operation #hub.whitelist se.internal = @s hub
function se:hub/whitelist/root

#-1 = a match, 0 equals no match
execute if score #hub.whitelisted se.internal matches -1 run data remove storage rx:io playerdb.player.data.se.hub.whitelist[0]
execute if score #hub.whitelisted se.internal matches -1 run tellraw @s ["",{"text":"[Hubs] ","color":"green"},{"text":"Removed player with uid "},{"score":{"name":"@s","objective":"hub"},"color":"gold"},{"text":" from the whitelist."}]
execute if score #hub.whitelisted se.internal matches 0 run tellraw @s ["",{"text":"[Hubs] ","color":"green"},{"text":"Player with uid "},{"score":{"name":"@s","objective":"hub"},"color":"gold"},{"text":" is not whitelisted."}]