# Dimension Reciever
# - Called by various functions
# Context: Player

#> If the dimension exists, set their score.
scoreboard players operation @s se.dim.id = @e[tag=se.dim.marker,distance=0..] se.dim.id

#> Register Dimensions if it doesn't exist.
# This is required due to what I call
# in my heart "stupid chunk bug" (which is intended)
execute unless entity @e[tag=se.dim.marker,distance=0..] run tag @s add pdi.override
execute unless entity @e[tag=se.dim.marker,distance=0..] at @s run function se:misc/dimension/initialize

tellraw @a[tag=se.debug] [{"text":"<Ran Dimension Get, Result: "},{"score":{"name":"@s","objective":"se.dim.id"}},">"]