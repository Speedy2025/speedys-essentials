# Permission Checking for Hubs
# - Executes if the hub exists
# Context: Unchecked player

#Note: I know it's "stinky" to run
#      a function with a ton of the same prefix in execute.
#      However, I believe this is cleaner to implement
#      and relatively simple to understand.

#> Clean up score
scoreboard players set #se.hub.ok se.storage 0

#>First, check if it is their hub.
execute if score @s hub = @s rx.uid run scoreboard players set #se.hub.ok se.storage 1

#>Next, check if the hub is locked.
execute if score #se.hub.ok se.storage matches 0 if data storage rx:io playerdb.player.data.se.hub{locked: 0b} run scoreboard players set #se.hub.ok se.storage 1

#>If the hub is locked, check if the player is whitelisted.
#Note: I do NOT include the input inside the cycler to allow dynamic input.
# Is it a waste? idk
execute if score #se.hub.ok se.storage matches 0 if data storage rx:io playerdb.player.data.se.hub{whitelisted: 1b} run scoreboard players set #se.hub.ok se.storage 2
execute if score #se.hub.ok se.storage matches 2 run scoreboard players operation #se.hub.input se.storage = @s rx.uid
execute if score #se.hub.ok se.storage matches 2 run function se:hub/whitelist_cycler/root
execute if score #se.hub.ok se.storage matches 2 if score #se.hub.whitelist se.storage matches 1 run scoreboard players set #se.hub.ok se.storage 1

#>Lastly, check if they have the special tag.
execute if entity @s[tag=se.bypass] run scoreboard players set #se.hub.ok se.storage 1


#>Act upon the results.
#Note: Failure can be 0 or 2 and Success can only be 1.
execute unless score #se.hub.ok se.storage matches 1 run tellraw @s[tag=!se.mute.system] ["",{"text":"[Hubs] ","color":"green"},{"text":"Hub "},{"score":{"name":"@s","objective":"hub"},"color":"gold"},{"text":" is locked."}]
execute if score #se.hub.ok se.storage matches 1 run function se:hub/teleport/action