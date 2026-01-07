###################
# Teleport Action #
###################

$execute in $(dim) run tp @s $(x) $(y) $(z) $(r1) $(r2)
tellraw @s ["",{text:"[Hub]",color:"green"},{text:" Teleported to "},{storage:"se:storage",nbt:"action.name",color:"gold"},"."]