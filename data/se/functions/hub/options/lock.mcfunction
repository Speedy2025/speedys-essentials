# Toggle Lock
# - Called by se:hub/root
# Context: Player

#Get the locked status, assume unlocked
scoreboard players set #hub.locked se.storage 0
execute store result score #hub.locked se.storage run data get storage rx.playerdb:io player.data.se.hub.locked

#Flip States
execute if score #hub.locked se.storage matches 0 run data modify storage rx.playerdb:io player.data.se.hub.locked set value 1b
execute if score #hub.locked se.storage matches 0 run tellraw @s[tag=!se.mute.system] ["",{"text":"[Hubs] ","color":"green"},{"text":"Your hub is now "},{"text":"locked","color":"gold"},{"text":"."}]
execute if score #hub.locked se.storage matches 1 run data modify storage rx.playerdb:io player.data.se.hub.locked set value 0b
execute if score #hub.locked se.storage matches 1 run tellraw @s[tag=!se.mute.system] ["",{"text":"[Hubs] ","color":"green"},{"text":"Your hub is now "},{"text":"unlocked","color":"gold"},{"text":"."}]

function #rx.playerdb:api/v2/save/self