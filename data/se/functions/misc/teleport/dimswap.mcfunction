# Switch Dimensions
# - Called by se:misc/teleport/action
# Context: Area Effect Cloud

# Score of #se.dest se.dim.id = Input
execute as @e[tag=se.dim.marker] if score @s se.dim.id = #se.dest se.dim.id run tp @e[tag=se.aec] @s