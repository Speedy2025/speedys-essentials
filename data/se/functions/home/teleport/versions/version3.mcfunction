# Version 3 Set
# - Called by se:home/teleport/versions/version3_gate
# Context: Player w/ Version 3 Home

# The current version of SE (As of Release v3)

#> Set X, Y, and Z
data modify storage se:input pos.x set from storage rx:io playerdb.player.data.se.homes[-1].x
data modify storage se:input pos.y set from storage rx:io playerdb.player.data.se.homes[-1].y
data modify storage se:input pos.z set from storage rx:io playerdb.player.data.se.homes[-1].z

#> Set rx & rz
data modify storage se:input pos.rx set from storage rx:io playerdb.player.data.se.homes[-1].rx
data modify storage se:input pos.rz set from storage rx:io playerdb.player.data.se.homes[-1].rz

#> Set Target Dimension
execute store result score #se.dest se.dim.id run data get storage rx:io playerdb.player.data.se.homes[-1].dim

#> Ready!