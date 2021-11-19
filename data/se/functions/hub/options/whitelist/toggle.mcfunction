# Toggle Whitelist
# - Called by se:hub/root
# Context: Player

#Get the whitelisted status, assume unwhitelisted
scoreboard players set #hub.whitelisted se.storage 0
execute store result score #hub.whitelisted se.storage run data get storage rx.playerdb:io player.data.se.hub.whitelisted

#Flip States
execute if score #hub.whitelisted se.storage matches 0 run data modify storage rx.playerdb:io player.data.se.hub.whitelisted set value 1b
execute if score #hub.whitelisted se.storage matches 0 run tellraw @s[tag=!se.mute.system] ["",{"text":"[Hubs] ","color":"green"},{"text":"Your hub is now "},{"text":"whitelisted","color":"gold"},{"text":"."}]
execute if score #hub.whitelisted se.storage matches 1 run data modify storage rx.playerdb:io player.data.se.hub.whitelisted set value 0b
execute if score #hub.whitelisted se.storage matches 1 run tellraw @s[tag=!se.mute.system] ["",{"text":"[Hubs] ","color":"green"},{"text":"Your hub is now "},{"text":"unwhitelisted","color":"gold"},{"text":"."}]

function #rx.playerdb:api/v2/save/self