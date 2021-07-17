# Repairs and Saves the list
# - Called by se:home/cycler/step
# Context: Player

tellraw @s[tag=se.debug] [{"text":"l1[] NBT: ","color":"dark_green"},{"nbt":"l1[]","storage":"se:cycler"}]
tellraw @s[tag=se.debug] [{"text":"l2[] NBT: ","color":"green"},{"nbt":"l2[]","storage":"se:cycler"}]

#> Move homes from l1 to the end of l2 to preserve l1[-1]
data modify storage se:cycler l2 append from storage se:cycler l1[]

#> Take the merged list and send it to the original homes list
data modify storage rx:io playerdb.player.data.se.homes set from storage se:cycler l2
tellraw @s[tag=se.debug] [{"text":"homes[] NBT: ","color":"dark_aqua"},{"nbt":"playerdb.player.data.se.homes[]","storage":"rx:io"}]
