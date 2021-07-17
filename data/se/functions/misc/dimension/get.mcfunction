# Dimension Reciever
# - Called by various functions
# Context: Player


#> Register Dimensions if it doesn't exist.
execute at @s unless entity @e[tag=se.dim.marker,distance=0..] run function se:misc/dimension/initialize

#> When the dimension exists, set their score.
execute at @s run scoreboard players operation @s se.dim.id = @e[tag=se.dim.marker,distance=0..] se.dim.id

tellraw @a[tag=se.debug] [{"text":"<Ran Dimension Get, Result: "},{"score":{"name":"@s","objective":"se.dim.id"}},">"]