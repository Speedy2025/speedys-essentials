#Initialize Variables & Triggers

#Variables
# tse_Ontime - Stores Player Ontime, Legacy
# se.player - Used for player temporary storage
# se.internal - Used for internal temporary storage
# se.settings - Used to configure Speedy's Essentials
scoreboard objectives add tse_Ontime dummy [{"text":"tse_Ontime","color":"gray"}]
scoreboard objectives add tse_OntimeWeeks dummy [{"text":"tse_OntimeWeeks","color":"gray"}]
scoreboard objectives add se.player dummy [{"text":"se.player","color":"gray"}]
scoreboard objectives add se.internal dummy [{"text":"se.internal","color":"gray"}]
scoreboard players set #cycle.success se.internal 1
scoreboard players set #const.-1 se.internal -1
scoreboard players set #const.1 se.internal 1
scoreboard players set #const.7 se.internal 7
scoreboard players set #const.12 se.internal 12
scoreboard players set #const.20 se.internal 20
scoreboard players set #const.24 se.internal 24
scoreboard players set #const.60 se.internal 60
scoreboard objectives add se.settings dummy [{"text":"se.settings","color":"gray"}]
scoreboard players set #homes.default se.settings 10
scoreboard players set #homes.week.1 se.settings 15
scoreboard players set #homes.week.2 se.settings 20
scoreboard players set #homes.week.3 se.settings 25
scoreboard players set #homes.week.4 se.settings 30
scoreboard objectives add se.tpr.cache dummy [{"text":"se.tpr.cache","color":"gray"}]
tellraw @a[tag=debug] ["",{"text":"[SE Load] ","color":"green"},{"text":"Loaded multi-use variables."}]

#Triggers - Names contain all needed information
scoreboard objectives add home trigger [{"text":"Home","color":"green"}]
scoreboard objectives add hub trigger [{"text":"Hub","color":"green"}]
scoreboard objectives add se_help trigger [{"text":"Help","color":"green"}]
scoreboard objectives add tpr trigger [{"text":"TPr","color":"green"}]
tellraw @a[tag=debug] ["",{"text":"[SE Load] ","color":"green"},{"text":"Loaded player triggers."}]

#Default World Configuration
forceload add -1 -1 1 1
tellraw @a[tag=debug] ["",{"text":"[SE Load] ","color":"green"},{"text":"Loaded block configuration."}]

###################
# Ontime Tracking # 
###################
# For Legacy Compatibility, the names are prefixed tse_ instead of se_
scoreboard objectives add tse_OntimeTicks dummy [{"text":"Ticks","color":"gray"}]
scoreboard objectives add tse_OntimeSecond dummy [{"text":"Seconds","color":"gray"}]
scoreboard objectives add tse_OntimeMinute dummy [{"text":"Minutes","color":"gray"}]
scoreboard objectives add tse_OntimeHours dummy [{"text":"Hours","color":"gray"}]
scoreboard objectives add tse_OntimeDays dummy [{"text":"Days","color":"gray"}]

tellraw @a ["",{"text":"[Speedy's Essentials] ","color":"green"},{"text":"Finished Loading!"}]