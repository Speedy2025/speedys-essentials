# Valid Home Teleport Function
# - Called by se:home/teleport/root
# Context: Successful Player

#> Reset the input

#> Get the home's version (for legacy and future support)
execute store result score #se.version se.storage run data get storage rx.playerdb:io player.data.se.homes[-1].version
execute unless score #se.version se.storage matches 1.. run scoreboard players set #se.version se.storage 2

#> Prepare the home's coordinates based on home

# Fix for a stupid bug I had
data modify storage se:input pos set value {x:0,y:0,z:0,rx:0,rz:0}

# I chose a function tag instead of hard coding to make it easier
#     to support other versions
function #se:home_version

#> The actual teleport function
#Note: It does NOT teleport on version 2
# - as v2 had a strange teleport
# - system and is handled in it's version function.
function se:misc/teleport/step
#execute if score #se.version se.storage matches 2 run function se:home/teleport/versions/version2_dimension
execute unless data storage rx.playerdb:io player.data.se.homes[-1].name run tellraw @s[tag=!se.mute.system]  ["",{"text":"[Homes] ","color":"green"},{"text":"Teleported to home "},{"score":{"name":"@s","objective":"home"},"color":"gold"},{"text":"."}]
execute if data storage rx.playerdb:io player.data.se.homes[-1].name run tellraw @s[tag=!se.mute.system] ["",{"text":"[Homes] ","color":"green"},{"text":"Teleported to "},{"nbt":"player.data.se.homes[-1].name","storage":"rx.playerdb:io","interpret":true,"color":"gold"},{"text":"."}]

