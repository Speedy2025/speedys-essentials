##############
# Cycle Lock #
##############

$execute store result score #se.hub.lock se.maxHomes run data get storage se:storage vals[{UUID: $(UUID)}].hub.status
scoreboard players add #se.hub.lock se.maxHomes 1
execute if score #se.hub.lock se.maxHomes matches 3.. run scoreboard players set #se.hub.lock se.maxHomes 0
$execute store result storage se:storage vals[{UUID: $(UUID)}].hub.status int 1 run scoreboard players get #se.hub.lock se.maxHomes