# Prep for Teleportation
# - Called by homes & hubs
# Context: Target Player

tellraw @s[tag=se.debug] "<Teleport Step>"
#> Targets the player
tag @s add se.target

#> Sumons the special AEC, modifies it's information, and then teleports the player to it.
summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:[se.aec]}

# Thanks to a special bug, I have to do this seperate.
execute as @e[tag=se.aec] run function se:misc/teleport/dimswap
execute as @e[tag=se.aec] run function se:misc/teleport/action

#> Cleans up the function
kill @e[tag=se.aec]
tag @s remove se.target