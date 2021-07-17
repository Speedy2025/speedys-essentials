# Comparing information on the list to target
# - Called by se:home/cycler/step
# Context: Player

#> Check if the list is empty (never has set a home)
execute if data storage se:cycler {l1:[]} run scoreboard players set #se.homes.result se.storage 3

#> If it isn't empty, check if it matches
#----| If not empty, get the id of l1[-1]
execute unless score #se.homes.result se.storage matches 3 store result score #se.homes.id se.storage run data get storage se:cycler l1[-1].id
#----| If not empty and if the id matches, report success
execute unless score #se.homes.result se.storage matches 3 if score #se.homes.id se.storage = @s home run scoreboard players set #se.homes.result se.storage 2

#> Got problem? Check here.
tellraw @s[tag=se.debug] ["Value: ",{"score":{"name":"#se.homes.result","objective":"se.storage"}}]
tellraw @s[tag=se.debug] [{"text":"NBT: ","color":"aqua"},{"nbt":"l1[]","storage":"se:cycler"}]

#> If it isn't empty and doesn't match, cycle the list and try again.
execute unless score #se.homes.result se.storage matches 2.. run function se:home/cycler/cycle

#) Nothing is needed if it is successful or is empty...