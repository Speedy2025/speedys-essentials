# Teleport to Hub
# - Called by se:hub/teleport/check_permission
# Context: Permitted Player

# "Don't trust the user" - Now we can.
#--| Something to note: Legacy input is OK. It's not as good, but it is passable.

#> Prepare X, Y, and Z
data modify storage se:input pos.x set from storage rx:io playerdb.player.data.se.hub.x
data modify storage se:input pos.y set from storage rx:io playerdb.player.data.se.hub.y
data modify storage se:input pos.z set from storage rx:io playerdb.player.data.se.hub.z

#> Set rx & rz
data modify storage se:input pos.rx set from storage rx:io playerdb.player.data.se.hub.rx
data modify storage se:input pos.rz set from storage rx:io playerdb.player.data.se.hub.rz

#> Set Target Dimension
execute store result score #se.dest se.dim.id run data get storage rx:io playerdb.player.data.se.hub.dim
execute store result score #se.version se.storage run data get storage rx:io playerdb.player.data.se.hub.version
execute unless score #se.version se.storage matches 1.. run scoreboard players set #se.version se.storage 2
execute if score #se.version se.storage matches 2 run function se:hub/teleport/fix_dim

#> Ready!
function se:misc/teleport/step
execute unless data storage rx:io playerdb.player.data.se.hub.name run tellraw @s[tag=!se.mute.system] ["",{"text":"[Hubs] ","color":"green"},{"text":"Teleported to "},{"nbt":"playerdb.player.info.name","storage":"rx:io","color":"gold"},{"text":"'s hub."}]
tellraw @a[tag=se.debug] [{"score":{"name":"@s","objective":"hub"}},{"text":" "},{"nbt":"playerdb.player.info","storage":"rx:io"}]
tellraw @a[tag=se.debug] {"nbt":"playerdb.player.data.se.hub","color":"gold","storage":"rx:io"}
tellraw @a[tag=se.debug] {"nbt":"pos","color":"gray","storage":"se:input"}
execute if data storage rx:io playerdb.player.data.se.hub.name run tellraw @s[tag=!se.mute.system] ["",{"text":"[Hubs] ","color":"green"},{"text":"Teleported to "},{"nbt":"playerdb.player.data.se.hub.name","interpret":true,"storage":"rx:io","color":"gold"},{"text":"."}]
