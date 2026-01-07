execute if entity @s[tag=se.hub.list] run scoreboard players operation @s hub *= #se.n1 se.maxHomes

execute if score @s hub matches -1 run function se:hubs/menu/display/root

#Prepare Values
execute if score @s hub matches ..-2 run data modify storage se:storage query.UUID set from entity @s UUID


execute if score @s hub matches -2 run function se:hubs/menu/set with storage se:storage query
execute if score @s hub matches -3 run function se:hubs/menu/cycle_lock with storage se:storage query
execute if score @s hub matches -4 run function se:hubs/menu/list/enable
execute if score @s hub matches -5 run function se:hubs/menu/list/show_entries with storage se:storage query


#If hub list mode is enabled, this will allow for disabling it.
execute if score @s hub = @s se.uid run function se:hubs/menu/list/disable
execute if score @s hub matches 1.. unless score @s hub = @s se.uid run function se:hubs/menu/list/remove_step

data remove storage se:storage query
scoreboard players reset @s hub