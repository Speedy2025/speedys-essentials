# AEC modifier
# - Called by se:misc/dimension/initialize
# Context: AEC w/ tag se.dim.uninit
tellraw @a[tag=se.debug] "<Initialize, Step 2>"
scoreboard players operation @s se.dim.id = #se.id.curr se.storage
scoreboard players add #se.id.curr se.storage 1
scoreboard players set @s se.storage 1
tag @s remove se.dim.uninit

#Serves as an API for
# datapacks like PDI that need it
