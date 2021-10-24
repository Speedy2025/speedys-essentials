# Dimension Registration
# - Called by se:misc/dimension/get
# Context: Player in unregistered dimension

tellraw @a ["",{"text":"[SE]","color":"green"},{"text":" Begun registering a new dimension!"}]
execute positioned 29999998 15 -29999964 run forceload add ~ ~
forceload add ~ ~
summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["se.dim.marker","se.dim.uninit"]}



execute as @e[tag=se.dim.uninit] at @s run function se:misc/dimension/initialize_step2