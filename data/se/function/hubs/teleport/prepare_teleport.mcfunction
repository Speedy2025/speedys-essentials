scoreboard players set @s hub -999

$data modify storage se:storage action.x set from storage se:storage vals[{UUID: $(UUID)}].hub.Pos[0]
$data modify storage se:storage action.y set from storage se:storage vals[{UUID: $(UUID)}].hub.Pos[1]
$data modify storage se:storage action.z set from storage se:storage vals[{UUID: $(UUID)}].hub.Pos[2]

$data modify storage se:storage action.r1 set from storage se:storage vals[{UUID: $(UUID)}].hub.Rotation[0]
$data modify storage se:storage action.r2 set from storage se:storage vals[{UUID: $(UUID)}].hub.Rotation[1]

$data modify storage se:storage action.dim set from storage se:storage vals[{UUID: $(UUID)}].hub.dimension
$data modify storage se:storage action.name set from storage se:storage vals[{UUID: $(UUID)}].hub.name

function se:hubs/teleport/action with storage se:storage action
data remove storage se:storage action