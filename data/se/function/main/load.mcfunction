###############
# Scoreboards #
###############

# Store Player UIDs
scoreboard objectives add se.uid dummy ["",{text:"UID",color:"gold"}]
scoreboard objectives add se.ontime minecraft.custom:play_time ["",{text:"Ontime",color:gold}]

# Store Next UID
execute unless score #se_nextUID se.uid matches 1.. run scoreboard players set #se_nextUID se.uid 1

# Enable Hole Prevention - Should the system scan for its next uid or use #se_nextUID?
# 1 - Use nextUID (cheap :D )
# 2 - Attempt a scan for holes (expensive D: )
execute unless score #se_scan se.uid matches 1..2 run scoreboard players set #se_scan se.uid 1

# Datapack Interaction
scoreboard objectives add hub trigger ["",{text:"HUB",color:"green",bold:true}]
scoreboard objectives add home trigger ["",{text:"HOME",color:"green",bold:true}]
scoreboard objectives add sethome trigger ["",{text:"SETHOME",color:"green",bold:true}]
scoreboard objectives add se_help trigger ["",{text:"HELP",color:"green",bold:true}]
scoreboard objectives add tpr trigger ["",{text:"TPr",color:"green",bold:true}]
scoreboard objectives add tprh trigger ["",{text:"TPrH",color:"green",bold:true}]
scoreboard objectives add list trigger ["",{text:"List",color:"green",bold:true}]

# Default Max Homes and a few constants...
scoreboard objectives add se.maxHomes dummy ["",{text:"MaxHomes",color:"gold"}]
execute unless score #se_default se.maxHomes = #se_default se.maxHomes run scoreboard players set #se_default se.maxHomes 10
scoreboard players set #se.per_page se.maxHomes 10
scoreboard players set #se.n1 se.maxHomes -1
scoreboard players set #se.const.10 se.maxHomes 10

# TPr Cache
scoreboard objectives add se.cache.tpr dummy ["",{text:"TPr Cache",color:"gold"}]
scoreboard objectives add se.cache.tprh dummy ["",{text:"TPr Cache",color:"gold"}]



################
# Data Storage #
################

#Note: #se_modified lets you override the default. Please let it initialize first, then change your hub, then lock it in with #se_modified.
#status refers to if it is OPEN, WHITELISTED, or BLACKLISTED
# 0 - OPEN (Everybody in)
# 1 - WHTIELISTED (Some can)
# 2 - BLACKLISTED (Some can't)
data modify storage se:key vals[{uid:0}] set value {uid:0,UID:[I;0, 0, 0, 0]}
execute unless score #se_modified se.uid matches 1 run data modify storage se:storage vals[{UUID:[I;0, 0, 0, 0]}] set value {UUID:[I;0, 0, 0, 0],homes:[],hub:{dimension:"minecraft:overworld",Pos:[0.0d, -67.0d, 0.0d],Rotation:[0.0f, 0.0f], name:"Your Hub", status:0, list:[]}, ontime:0}

tellraw @a ["",{text:"[SEv4]",color:"green"},{text:" Finished loading SEv4."}]