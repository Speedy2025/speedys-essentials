# AEC modifier
# - Called by se:misc/dimension/initialize
# Context: AEC w/ tag se.dim.uninit

scoreboard players operation @s se.dim.id = #se.id.curr se.storage
scoreboard players add #se.id.curr se.storage 1
tag @s remove se.dim.uninit

#Thanks Mojank and 1.17...
scoreboard players operation @a[tag=se.temp] se.dim.id = @s se.dim.id
tp @s 29999998 15 -29999964