######################
# Detect Name Change #
######################

# Before we consider a new uid, check if their name changed. If so, assign them their old uid.
data modify storage se:key validate.UUID set from entity @s UUID

function se:initialize/detect with storage se:key validate
execute if score @s se.uid = @s se.uid at @s run summon armor_stand ~ ~ ~ {equipment: {head: {id:"minecraft:player_head"}},Small:1b,Invisible:1b, Tags:['se.init','se.killInstantly']}
execute if score @s se.uid = @s se.uid run item modify entity @e[type=armor_stand,tag=se.init,limit=1] armor.head se:fill_head
execute if score @s se.uid = @s se.uid run data modify storage se:key new.name set from entity @e[type=armor_stand,tag=se.init,limit=1] equipment.head.components."minecraft:profile".name
execute if score @s se.uid = @s se.uid run tag @e[type=armor_stand,limit=1] remove se.init
execute if score @s se.uid = @s se.uid run kill @e[type=armor_stand,tag=se.killInstantly]

execute if score @s se.uid = @s se.uid run return 1

##################
# Create New UID #
##################

# There are two routes this can go:
# 1. Grab the latest UID and go.
# 2. Find a UID (if I previously deleted one, this is specifically a admin thing.)
#
# Note: Under normal gameplay, 2 will never need to be run.
#       If I DO need to, it's because someone asked me to remove their data. Or I wanted to. \_(._.)_/
execute if score #se_scan se.uid matches 2 run function se:initialize/scan/start
execute if score #se_scan se.uid matches 1 run function se:initialize/iterate

function se:initialize/build_player