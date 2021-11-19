#Get the whitelisted status, assume unwhitelisted
scoreboard players set #hub.whitelisted se.internal 0
execute store result score #hub.whitelisted se.internal run data get storage rx.playerdb:io player.data.se.hub.whitelisted

#Flip States
execute if score #hub.whitelisted se.internal matches 0 run data modify storage rx.playerdb:io player.data.se.hub.whitelisted set value 1b
execute if score #hub.whitelisted se.internal matches 0 run tellraw @s ["",{"text":"[Hubs] ","color":"green"},{"text":"Your hub is now "},{"text":"whitelisted","color":"gold"},{"text":"."}]
execute if score #hub.whitelisted se.internal matches 1 run data modify storage rx.playerdb:io player.data.se.hub.whitelisted set value 0b
execute if score #hub.whitelisted se.internal matches 1 run tellraw @s ["",{"text":"[Hubs] ","color":"green"},{"text":"Your hub is now "},{"text":"unwhitelisted","color":"gold"},{"text":"."}]
