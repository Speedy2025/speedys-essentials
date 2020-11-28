scoreboard players operation @s tse_OntimeWeeks = @s tse_Ontime
scoreboard players operation @s tse_OntimeWeeks /= #const.20 se.internal
scoreboard players operation @s tse_OntimeWeeks /= #const.60 se.internal
scoreboard players operation @s tse_OntimeWeeks /= #const.60 se.internal
scoreboard players operation @s tse_OntimeWeeks /= #const.24 se.internal
scoreboard players operation @s tse_OntimeWeeks /= #const.7 se.internal

execute if score @s tse_OntimeWeeks matches 0 run scoreboard players operation @s se.player = #homes.default se.settings
execute if score @s tse_OntimeWeeks matches 1 run scoreboard players operation @s se.player = #homes.week.1 se.settings
execute if score @s tse_OntimeWeeks matches 2 run scoreboard players operation @s se.player = #homes.week.2 se.settings
execute if score @s tse_OntimeWeeks matches 3 run scoreboard players operation @s se.player = #homes.week.3 se.settings
execute if score @s tse_OntimeWeeks matches 4.. run scoreboard players operation @s se.player = #homes.week.4 se.settings