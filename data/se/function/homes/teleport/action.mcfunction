###################
# Teleport Action #
###################

# Take the pre-loaded values from cleared and send them in.
# This used to be a LOT more complicated, see SEv2/SEv3 for that nightmare.
# Now it is just one command...

$execute in $(dim) run tp @s $(x) $(y) $(z) $(r1) $(r2)
tellraw @s ["",{text:"[Home]",color:"green"},{text:" Teleported to "},{storage:"se:storage",nbt:"action.name",color:"gold"},"."]