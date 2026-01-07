################
# Build Player #
################

# The player now has a UID that we know FOR SURE is free.
# Here's what I need to do:
#      1) Add a key to the sytem in se:key
#                  uid:X,UUID[v]
#      2) Copy the template player from se:storage.
#
#
#     Note: I copy from storage to allow for a "common hub"
#           If you modify the template and then lock the score, you can create this common hub.
#           I recommend it for multi-world servers with PDIv2 (Per-Dimension Inventory)

# Start by adding their uid and UUID to the system.
execute store result storage se:key new.uid int 1 run scoreboard players get @s se.uid
data modify storage se:key new.UUID set from entity @s UUID

#Obtain Player name
execute at @s run summon armor_stand ~ ~ ~ {equipment: {head: {id:"minecraft:player_head"}},Small:1b,Invisible:1b, Tags:['se.init','se.killInstantly']}
item modify entity @e[tag=se.init,limit=1] armor.head se:fill_head
data modify storage se:key new.name set from entity @e[tag=se.init,limit=1] equipment.head.components."minecraft:profile".name
tag @e[type=armor_stand,limit=1] remove se.init
kill @e[type=armor_stand,tag=se.killInstantly]

data modify storage se:key vals append from storage se:key new

# Key created for later uses. Now, copy the template player.
scoreboard players operation @s se.maxHomes = #se_default se.maxHomes

data modify storage se:storage new set from storage se:storage vals[{UUID:[I;0, 0, 0, 0]}]
execute store result storage se:storage new.max_homes int 1 run scoreboard players get @s se.maxHomes
data modify storage se:storage new.ontime set value 0
data modify storage se:storage new.UUID set from storage se:key new.UUID
data modify storage se:storage vals append from storage se:storage new


tellraw @s ["",{text:"[SEv4]",color:"green"},{text:" Your UID has been assigned to "},{score:{name:"@s",objective:"se.uid"},color:"gold"},{text:"."}]

function #se:first_initiate

data remove storage se:storage new