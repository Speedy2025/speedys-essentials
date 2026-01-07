##########
# Modify #
##########

# We are technically modifying a home, no matter if we create or change.

# {UUID:[I;0, 0, 0, 0],homes:[],hub:{dimension:"minecraft:overworld",Pos:[0.0d, -67.0d, 0.0d],Rotation:[0.0f, 0.0f], name:"Template Hub", ontime:0}}
# vals[{UUID:[I;0, 0, 0, 0]}]
$execute unless data storage se:storage vals[{UUID: $(UUID)}].homes[{id: $(val)}] run function se:homes/create/add with storage se:storage query
$data modify storage se:storage vals[{UUID: $(UUID)}].homes[{id: $(val)}].dimension set from entity @s Dimension
$data modify storage se:storage vals[{UUID: $(UUID)}].homes[{id: $(val)}].Pos set from entity @s Pos
$data modify storage se:storage vals[{UUID: $(UUID)}].homes[{id: $(val)}].Rotation set from entity @s Rotation
$execute if data entity @s equipment.offhand{id: "minecraft:written_book"} if data entity @s equipment.offhand.components.minecraft:written_book_content run data modify storage se:storage vals[{UUID: $(UUID)}].homes[{id: $(val)}].description set from entity @s equipment.offhand.components."minecraft:written_book_content".pages[0].raw
$execute if data entity @s equipment.offhand{id: "minecraft:written_book"} if data entity @s equipment.offhand.components.minecraft:written_book_content run data modify storage se:storage vals[{UUID: $(UUID)}].homes[{id: $(val)}].name set from entity @s equipment.offhand.components."minecraft:written_book_content".title.raw
$execute if data entity @s equipment.offhand{id: "minecraft:name_tag"} if data entity @s equipment.offhand.components.minecraft:custom_name run data modify storage se:storage vals[{UUID: $(UUID)}].homes[{id: $(val)}].name set from entity @s equipment.offhand.components.minecraft:custom_name
$tellraw @s ["",{text:"[Home]",color:"green"},{text:" Set "},{storage:"se:storage",nbt:"vals[{UUID: $(UUID)}].homes[{id: $(val)}].name","color":gold},"."]

data remove storage se:storage query