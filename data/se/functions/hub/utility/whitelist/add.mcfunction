# Set Input, Run through whitelist checker
scoreboard players set #hub.whitelisted se.internal 0
scoreboard players operation #hub.whitelist se.internal = @s hub
function se:hub/whitelist/root

#-1 = a match, 0 equals no match
execute if score #hub.whitelisted se.internal matches 0 store result storage rx:io playerdb.player.data.se.hub.whitelisttemp int 1 run scoreboard players get @s hub
execute if score #hub.whitelisted se.internal matches 0 run data modify storage rx:io playerdb.player.data.se.hub.whitelist prepend from storage rx:io playerdb.player.data.se.hub.whitelisttemp
execute if score #hub.whitelisted se.internal matches 0 run tellraw @s ["",{"text":"[Hubs] ","color":"green"},{"text":"Added player with uid "},{"score":{"name":"@s","objective":"hub"},"color":"gold"},{"text":" to the whitelist."}]
execute if score #hub.whitelisted se.internal matches -1 run tellraw @s ["",{"text":"[Hubs] ","color":"green"},{"text":"Player with uid "},{"score":{"name":"@s","objective":"hub"},"color":"gold"},{"text":" is already whitelisted."}]
