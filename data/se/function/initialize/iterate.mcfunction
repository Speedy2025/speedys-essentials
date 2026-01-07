###########
# Iterate #
###########

# We don't need to do anything "fancy" - just iterate.
scoreboard players operation @s se.uid = #se_nextUID se.uid
scoreboard players add #se_nextUID se.uid 1