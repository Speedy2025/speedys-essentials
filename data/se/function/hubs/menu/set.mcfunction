###########
# Set Hub #
###########

$data modify storage se:storage vals[{UUID: $(UUID)}].hub.Pos set from entity @s Pos
$data modify storage se:storage vals[{UUID: $(UUID)}].hub.Rotation set from entity @s Rotation
$data modify storage se:storage vals[{UUID: $(UUID)}].hub.dimension set from entity @s Dimension

$execute if data entity @s equipment.offhand.components.minecraft:custom_name run data modify storage se:storage vals[{UUID: $(UUID)}].hub.name set from entity @s equipment.offhand.components.minecraft:custom_name
$tellraw @s ["",{text:"[Hub] ",color:"green"},{storage:"se:storage",nbt:"vals[{UUID: $(UUID)}].hub.name",interpret:true,color:"gold"},{text:" has been set."}]