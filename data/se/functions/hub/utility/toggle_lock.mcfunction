#Get the locked status, assume unlocked
scoreboard players set #hub.locked se.internal 0
execute store result score #hub.locked se.internal run data get storage rx.playerdb:io player.data.se.hub.locked

#Flip States
execute if score #hub.locked se.internal matches 0 run data modify storage rx.playerdb:io player.data.se.hub.locked set value 1b
execute if score #hub.locked se.internal matches 0 run tellraw @s ["",{"text":"[Hubs] ","color":"green"},{"text":"Your hub is now "},{"text":"locked","color":"gold"},{"text":"."}]
execute if score #hub.locked se.internal matches 1 run data modify storage rx.playerdb:io player.data.se.hub.locked set value 0b
execute if score #hub.locked se.internal matches 1 run tellraw @s ["",{"text":"[Hubs] ","color":"green"},{"text":"Your hub is now "},{"text":"unlocked","color":"gold"},{"text":"."}]
