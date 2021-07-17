# Sets the player's hub to their current location
# - Called by se:hub/options/root
# Context: Player

#> Set Coordinates (Legacy is an int, new is a double)
data modify storage rx:io playerdb.player.data.se.hub.x set from entity @s Pos[0]
data modify storage rx:io playerdb.player.data.se.hub.y set from entity @s Pos[1]
data modify storage rx:io playerdb.player.data.se.hub.z set from entity @s Pos[2]

#> Set Dimension # (Modern)
function se:misc/dimension/get
execute store result storage rx:io playerdb.player.data.se.hub.dim int 1 run scoreboard players get @s se.dim.id
data modify storage rx:io playerdb.player.data.se.hub.dimName set from entity @s Dimension

#> Set Rotation (Legacy is an int, new is a float)
data modify storage rx:io playerdb.player.data.se.hub.rx set from entity @s Rotation[0]
data modify storage rx:io playerdb.player.data.se.hub.rz set from entity @s Rotation[1]

#> Set the version (in case I update it in the future)
data modify storage rx:io playerdb.player.data.se.hub.version set value 3
execute if entity @s[nbt={Inventory:[{Slot: -106b, id:"minecraft:name_tag", tag:{display:{}}}]}] run data modify storage rx:io playerdb.player.data.se.hub.name set from entity @s Inventory[{Slot: -106b}].tag.display.Name
execute unless entity @s[nbt={Inventory:[{Slot: -106b, id:"minecraft:name_tag", tag:{display:{}}}]}] run data remove storage rx:io playerdb.player.data.se.hub.name
tellraw @s[tag=se.debug] "<Modified Hub>"
tellraw @a[tag=se.debug] {"nbt":"playerdb.player.data.se.hub","storage":"rx:io","color":"green"}
function rx.playerdb:api/save_self