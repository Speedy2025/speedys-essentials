# Append Home
# - Called by se:home/set/root
# Context: Player w/o Home

#) rx:io playerdb.player.data.se.homes[-1]
#) ^ Setting
#) The list is cached, but needs to be prepped.

#> Prepping list
#> Create list entry at [-1] with the correct ID
data modify storage rx:io playerdb.player.data.se.homes append value {id:-1}
execute store result storage rx:io playerdb.player.data.se.homes[-1].id int 1 run scoreboard players get @s home

#> Set Coordinates (Legacy is an int, new is a double)
data modify storage rx:io playerdb.player.data.se.homes[-1].x set from entity @s Pos[0]
data modify storage rx:io playerdb.player.data.se.homes[-1].y set from entity @s Pos[1]
data modify storage rx:io playerdb.player.data.se.homes[-1].z set from entity @s Pos[2]

#> Set Dimension # (Modern)
function se:misc/dimension/get
execute store result storage rx:io playerdb.player.data.se.homes[-1].dim int 1 run scoreboard players get @s se.dim.id
data modify storage rx:io playerdb.player.data.se.homes[-1].dimName set from entity @s Dimension

#> Set Rotation (Legacy is an int, new is a float)
data modify storage rx:io playerdb.player.data.se.homes[-1].rx set from entity @s Rotation[0]
data modify storage rx:io playerdb.player.data.se.homes[-1].rz set from entity @s Rotation[1]

#> Set name, if possible
execute if entity @s[nbt={Inventory:[{Slot: -106b, id:"minecraft:name_tag", tag:{display:{}}}]}] run data modify storage rx:io playerdb.player.data.se.homes[-1].name set from entity @s Inventory[{Slot: -106b}].tag.display.Name

#> Set the version (in case I update it in the future)
data modify storage rx:io playerdb.player.data.se.homes[-1].version set value 3

tellraw @s[tag=se.debug] "<Appended Home>"