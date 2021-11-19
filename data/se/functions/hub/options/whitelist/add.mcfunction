# Add players to the hub
# - Called by se:hub/redirect
# Context: Player

function #rx.playerdb:api/v2/get/self

scoreboard players operation #se.hub.input se.storage = @s hub
function se:hub/whitelist_cycler/root

execute if score #se.hub.whitelist se.storage matches 0 run data modify storage rx.playerdb:io player.data.se.hub.whitelist append value -1
execute if score #se.hub.whitelist se.storage matches 0 store result storage rx.playerdb:io player.data.se.hub.whitelist[-1] int 1 run scoreboard players get @s hub
execute if score #se.hub.whitelist se.storage matches 0 run tellraw @s[tag=!se.mute.system] ["",{"text":"[Hubs] ","color":"green"},{"text":"Added uid "},{"score":{"name":"@s","objective":"hub"},"color":"gold"},{"text":"."}]


execute if score #se.hub.whitelist se.storage matches 1 run tellraw @s[tag=!se.mute.system] ["",{"text":"[Hubs] ","color":"green"},{"text":"Uid "},{"score":{"name":"@s","objective":"hub"},"color":"gold"},{"text":" was already whitelisted."}]
function #rx.playerdb:api/v2/save/self