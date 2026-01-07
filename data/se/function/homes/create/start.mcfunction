###############
# Create Home #
###############

# {UUID:[I;0, 0, 0, 0],homes:[],hub:{dimension:"minecraft:overworld",Pos:[0.0d, -67.0d, 0.0d],Rotation:[0.0f, 0.0f], name:"Template Hub", ontime:0}}

# We don't ever need to verify the number of homes except in the beginning
execute if score @s sethome > @s se.maxHomes unless score @s se.maxHomes matches 1 run tellraw @s ["",{text:"[Home]",color:"green"},{text:" You cannot have more than "},{score:{name:"@s",objective:"se.maxHomes"},color:"gold"},{text:" homes",color:"gold"},"."]
execute if score @s sethome > @s se.maxHomes if score @s se.maxHomes matches 1 run tellraw @s ["",{text:"[Home]",color:"green"},{text:" You cannot have more than "},{text:"1 home",color:"gold"},"."]
execute if score @s sethome > @s se.maxHomes run return fail

execute store result storage se:storage query.val int 1 run scoreboard players get @s sethome
data modify storage se:storage query.UUID set from entity @s UUID
function se:homes/create/modify with storage se:storage query
