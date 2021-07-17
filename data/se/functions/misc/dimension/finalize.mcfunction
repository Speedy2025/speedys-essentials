# Dimension Registration Finalization
# - Called by se:tick
# Context: AEC that existed for 5 seconds (should be enough to load)

scoreboard players reset @s se.storage
tp @s 29999998 15 -29999964
forceload remove ~ ~
tellraw @a ["",{"text":"[SE]","color":"green"},{"text":" Finished registering the dimension!"}]
say @e[type=area_effect_cloud,distance=100..]