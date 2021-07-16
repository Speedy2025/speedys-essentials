# Primary Loading Function
# - Executes on Load
# Context: Server

#define storage se:ontime "data w/ ontime leaderboard, 6th piece ignored"
###################
# Variable Values #
###################
scoreboard objectives add se.storage dummy [{"text":"se.storage","color":"dark_purple"}]
scoreboard objectives add se.tpr.cache dummy [{"text":"se.tpr.cache","color":"dark_purple"}]
scoreboard objectives add se.dim.id dummy [{"text":"se.dim.id","color":"dark_purple"}]
execute unless score #se.id.curr se.dim.id matches 1.. run scoreboard players set #se.id.curr se.dim.id 1
#############
# Constants #
#############
scoreboard players set #se.const.n1 se.storage -1
scoreboard players set #se.const.5 se.storage 5
scoreboard players set #se.const.20 se.storage 20
scoreboard players set #se.const.24 se.storage 24
scoreboard players set #se.const.60 se.storage 60
scoreboard players set #se.const.100 se.storage 100
scoreboard players set #se.const.12096000 se.storage 12096000

############
# Triggers #
############
scoreboard objectives add se_help trigger [{"text":"Help","color":"green"}]
scoreboard objectives add home trigger [{"text":"Home","color":"green"}]
scoreboard objectives add sethome trigger [{"text":"Set Home","color":"green"}]
scoreboard objectives add hub trigger [{"text":"Hub","color":"green"}]
scoreboard objectives add tpr trigger [{"text":"TPr","color":"green"}]
scoreboard objectives add ontime trigger [{"text":"Ontime","color":"green"}]
tellraw @a[tag=se.debug] ["",{"text":"[SE Debug] ","color":"green"},{"text":"Loaded player triggers."}]

###################
# Ontime Tracking # 
###################
# For Legacy Compatibility, the names are prefixed tse_ instead of se.
scoreboard objectives add tse_Ontime dummy [{"text":"tse_Ontime","color":"gray"}]
scoreboard objectives add tse_OntimeTicks dummy [{"text":"Ticks","color":"gray"}]
scoreboard objectives add tse_OntimeSecond dummy [{"text":"Seconds","color":"gray"}]
scoreboard objectives add tse_OntimeMinute dummy [{"text":"Minutes","color":"gray"}]
scoreboard objectives add tse_OntimeHours dummy [{"text":"Hours","color":"gray"}]
scoreboard objectives add tse_OntimeDays dummy [{"text":"Days","color":"gray"}]
scoreboard objectives add tse_OntimeWeeks dummy [{"text":"Weeks","color":"gray"}]
tellraw @a[tag=se.debug] ["",{"text":"[SE Debug] ","color":"green"},{"text":"Loaded ontime scoreboards."}]

################################
# Initilize/Reset Ontime Clock #
################################
schedule clear se:update_ontime
schedule function se:update_ontime 60s replace

tellraw @a ["",{"text":"[Speedy's Essentials]","color":"green","hoverEvent":{"action":"show_text","value":"Speedy's Essentials Version 3 \nBy Speedy2025"}},{"text":" Finished loading!"}]