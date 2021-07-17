# Remove players from the hub
# - Called by se:hub/redirect
# Context: Player

function rx.playerdb:api/get_self

scoreboard players operation #se.hub.input se.storage = @s hub
function se:hub/whitelist_cycler/root

execute if score #se.hub.whitelist se.storage matches 1 run data remove storage rx:io playerdb.player.data.se.hub.whitelist[-1]
execute if score #se.hub.whitelist se.storage matches 1 run tellraw @s[tag=!se.mute.system] ["",{"text":"[Hubs] ","color":"green"},{"text":"Removed uid "},{"score":{"name":"@s","objective":"hub"},"color":"gold"},{"text":"."}]


execute if score #se.hub.whitelist se.storage matches 0 run tellraw @s[tag=!se.mute.system] ["",{"text":"[Hubs] ","color":"green"},{"text":"Uid "},{"score":{"name":"@s","objective":"hub"},"color":"gold"},{"text":" was not whitelisted."}]
function rx.playerdb:api/save_self