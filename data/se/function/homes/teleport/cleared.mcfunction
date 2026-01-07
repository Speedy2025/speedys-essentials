##########################
# Cleared - Preparing... #
##########################

# Due to some wierd quirks, we instead prepare a storage for everything.

$execute unless data storage se:storage vals[{UUID: $(UUID)}].homes[{id: $(val)}] run tellraw @s ["",{text:"[Home]",color:"green"},{text:" Home $(val)",color:"gold"},{text:" is not set."}]
$execute unless data storage se:storage vals[{UUID: $(UUID)}].homes[{id: $(val)}] run return fail

$data modify storage se:storage action.x set from storage se:storage vals[{UUID: $(UUID)}].homes[{id: $(val)}].Pos[0]
$data modify storage se:storage action.y set from storage se:storage vals[{UUID: $(UUID)}].homes[{id: $(val)}].Pos[1]
$data modify storage se:storage action.z set from storage se:storage vals[{UUID: $(UUID)}].homes[{id: $(val)}].Pos[2]

$data modify storage se:storage action.r1 set from storage se:storage vals[{UUID: $(UUID)}].homes[{id: $(val)}].Rotation[0]
$data modify storage se:storage action.r2 set from storage se:storage vals[{UUID: $(UUID)}].homes[{id: $(val)}].Rotation[1]

$data modify storage se:storage action.dim set from storage se:storage vals[{UUID: $(UUID)}].homes[{id: $(val)}].dimension
$data modify storage se:storage action.name set from storage se:storage vals[{UUID: $(UUID)}].homes[{id: $(val)}].name

function se:homes/teleport/action with storage se:storage action
data remove storage se:storage action