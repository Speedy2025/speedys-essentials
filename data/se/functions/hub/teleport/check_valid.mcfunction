# rx:io playerdb.player.data.se.hub
scoreboard players set #hub.locked se.internal 0
scoreboard players set #hub.whitelisted se.internal 0
execute store result score #hub.locked se.internal run data get storage rx:io playerdb.player.data.se.hub.locked
execute store result score #hub.whitelisted se.internal run data get storage rx:io playerdb.player.data.se.hub.whitelisted
#Set input

scoreboard players operation #hub.whitelist se.internal = @s rx.uid
execute if score #hub.locked se.internal matches 0 run function se:hub/teleport/step
execute if score #hub.locked se.internal matches 1 if score #hub.whitelisted se.internal matches 1 run function se:hub/whitelist/root
execute if score #hub.locked se.internal matches 1 if score #hub.whitelisted se.internal matches 0 run tellraw @s ["",{"text":"[Hubs] ","color":"green"},{"text":"Sorry, hub "},{"score":{"name":"@s","objective":"hub"},"color":"gold"},{"text":" is locked."}]
execute if score #hub.locked se.internal matches 1 if score #hub.whitelisted se.internal matches -1 run function se:hub/teleport/step
