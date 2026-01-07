$execute unless data storage se:storage vals[{UUID: $(UUID)}].homes[{id: $(val)}] run tellraw @s ["",{text:"[Home]",color:"green"},{text:" That home does not exist. "}]
$execute unless data storage se:storage vals[{UUID: $(UUID)}].homes[{id: $(val)}] run return fail

$tellraw @s ["",{text:"[Home]",color:"green"},{text:" Removed "},{storage:"se:storage",nbt:"vals[{UUID: $(UUID)}].homes[{id: $(val)}].name","color":gold},"."]
$data remove storage se:storage vals[{UUID: $(UUID)}].homes[{id: $(val)}]

#Modify Home Count to Reflect New Size
$execute store result score #se.home_count se.maxHomes run data get storage se:storage vals[{UUID: $(UUID)}].home_count
scoreboard players remove #se.home_count se.maxHomes 1
$execute store result storage se:storage vals[{UUID: $(UUID)}].home_count int 1 run scoreboard players get #se.home_count se.maxHomes