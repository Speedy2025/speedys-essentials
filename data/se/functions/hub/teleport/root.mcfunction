# Base Hub Teleport
# - Executes on player request & if not input mode
# Context: Unchecked player

scoreboard players operation $in.uid rx.io = @s hub
function rx.playerdb:api/get

execute store result score #se.hub.valid se.storage run data get storage rx:io playerdb.player.data.se.hub
execute if score #se.hub.valid se.storage matches 1.. run function se:hub/teleport/check_permission
execute if score #se.hub.valid se.storage matches 0 run tellraw @s[tag=!se.mute.system] ["",{"text":"[Hubs] ","color":"green"},{"text":"Hub "},{"score":{"name":"@s","objective":"hub"},"color":"gold"},{"text":" does not exist."}]