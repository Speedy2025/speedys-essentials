# Dimension Registration
# - Called by se:misc/dimension/get
# Context: Player in unregistered dimension
tellraw @a[tag=se.debug] [{"text":"<Dimension Registered>"}]
execute positioned 29999998 15 -29999964 run forceload add ~ ~
summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["se.dim.marker","se.dim.uninit"]}
tag @s add se.temp

#Thanks to 1.17, I need to run
# some of PDI's logic in SEv3
function pdi:misc/register
scoreboard players operation @s c.inv.prev = @s c.inv.curr
scoreboard players operation @s c.inv.curr = @e[tag=pdi.registered,distance=0..] c.inv.curr

execute as @e[tag=se.dim.uninit] run function se:misc/dimension/initialize_step2

tag @s remove se.temp