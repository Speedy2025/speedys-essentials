$execute store result score #se.home_count se.maxHomes run data get storage se:storage vals[{UUID: $(UUID)}].home_count
scoreboard players add #se.home_count se.maxHomes 1
$execute store result storage se:storage vals[{UUID: $(UUID)}].home_count int 1 run scoreboard players get #se.home_count se.maxHomes
$data modify storage se:storage vals[{UUID: $(UUID)}].homes append value {id: $(val), dimension:"minecraft:overworld",Pos:[0.0d, -67.0d, 0.0d],Rotation:[0.0f, 0.0f], name:"Home $(val)"}