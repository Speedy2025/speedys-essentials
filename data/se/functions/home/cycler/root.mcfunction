# Initial Check on Cycler
# - Called by se:home/set/root & se:home/teleport/root
# Context: Player

#) The following are possible outcomes:
#) 1 - [home] was set to higher than their limit
#) 2 - [home] exists and is moved to -1
#) 3 - [home] does not exist
#)
#) I do this instead of directly comparing scores
#)   to make it easier to debug

#> Get the maximum player homes
function #se:max_homes

#> Prevent bugs by resetting #se.homes.result
scoreboard players set #se.homes.result se.storage 0

#> If [home] is more than their max homes, report failure (1)
execute if score @s home > #se.homes.max se.storage run scoreboard players set #se.homes.result se.storage 1
tellraw @s[tag=se.debug] ["Curr/Max: ",{"score":{"name":"@s","objective":"home"}},{"text":" "},{"score":{"name":"#se.homes.max","objective":"se.storage"}}]
#> If the above did not fail, step into the cycler
execute unless score #se.homes.result se.storage matches 1 run function se:home/cycler/step

#] @Speedy2025#2025