# Version 2 Set
# - Called by se:home/teleport/versions/version2_gate
# Context: Player w/ Version 2 Home

#> Set X, Y, and Z
data modify storage se:input pos.x set from storage rx.playerdb:io player.data.se.homes[-1].x
data modify storage se:input pos.y set from storage rx.playerdb:io player.data.se.homes[-1].y
data modify storage se:input pos.z set from storage rx.playerdb:io player.data.se.homes[-1].z

#> Set rx & rz
data modify storage se:input pos.rx set from storage rx.playerdb:io player.data.se.homes[-1].rx
data modify storage se:input pos.rz set from storage rx.playerdb:io player.data.se.homes[-1].rz

#> Set Target Dimension
execute store result score #se.dest se.dim.id run data get storage rx.playerdb:io player.data.se.homes[-1].dim

#> Ready!
tellraw @a[tag=se.debug] "<< RAN VERSION 2>>"


execute if score #se.dest se.dim.id matches 3 in c:1 run scoreboard players set #se.dest se.dim.id 5
execute if score #se.dest se.dim.id matches 4 in c:10 run scoreboard players set #se.dest se.dim.id 4
execute if score #se.dest se.dim.id matches 17 in minecraft:the_end run scoreboard players set #se.dest se.dim.id 2
execute if score #se.dest se.dim.id matches 19 in minecraft:overworld run scoreboard players set #se.dest se.dim.id 0
execute if score #se.dest se.dim.id matches 20 in minecraft:the_nether run scoreboard players set #se.dest se.dim.id 1

tellraw @s[tag=se.debug] {"score":{"name":"#se.dest","objective":"se.dim.id"}}