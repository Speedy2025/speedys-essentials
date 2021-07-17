# Obtain Max Homes
# - Called by se:home/cycler/root through #se:max_homes
# Context: Player

#> Get Current Weeks
scoreboard players operation @s tse_OntimeWeeks = @s tse_Ontime
scoreboard players operation @s tse_OntimeWeeks /= #se.const.12096000 se.storage

#) To preserve the weeks in case anyone else uses it, we will copy over
scoreboard players operation #se.homes.max se.storage = @s tse_OntimeWeeks
scoreboard players operation #se.homes.max se.storage *= #se.const.5 se.storage
scoreboard players add #se.homes.max se.storage 10
execute if score #se.homes.max se.storage matches 31.. run scoreboard players set #se.homes.max se.storage 30
execute unless score #se.homes.max se.storage matches 10.. run scoreboard players set #se.homes.max se.storage 10
