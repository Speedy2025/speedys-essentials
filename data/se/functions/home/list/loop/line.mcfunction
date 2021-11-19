# Display Homes
# - Called by se:home/list/show
# Context: Player

# Displays a message per home

# This a more volitile method, but since the data IS NOT being saved, we're OK do to this way.
#      Note: I can only be certain of this because each function ALWAYS calls #rx.playerdb:api/v2/get or .../get_self
#            this overrides the data and unsaves the data if it was not saved.


#Reused code from se:home/set/success
# I wasn't originally planning to reuse it, but I've used it yet again. Handy I suppose
# More info about how it works in the OG function

# <X>
execute store result score #se.homes.x1 se.storage run data get storage rx.playerdb:io player.data.se.homes[-1].x 100.00
execute store result score #se.homes.x2 se.storage run data get storage rx.playerdb:io player.data.se.homes[-1].x 1
scoreboard players operation #se.homes.x3 se.storage = #se.homes.x2 se.storage
scoreboard players operation #se.homes.x3 se.storage *= #se.const.100 se.storage
scoreboard players operation #se.homes.x1 se.storage -= #se.homes.x3 se.storage

# <Y>
execute store result score #se.homes.y1 se.storage run data get storage rx.playerdb:io player.data.se.homes[-1].y 100
execute store result score #se.homes.y2 se.storage run data get storage rx.playerdb:io player.data.se.homes[-1].y 1
scoreboard players operation #se.homes.y3 se.storage = #se.homes.y2 se.storage
scoreboard players operation #se.homes.y3 se.storage *= #se.const.100 se.storage
scoreboard players operation #se.homes.y1 se.storage -= #se.homes.y3 se.storage

# <Z>
execute store result score #se.homes.z1 se.storage run data get storage rx.playerdb:io player.data.se.homes[-1].z 100
execute store result score #se.homes.z2 se.storage run data get storage rx.playerdb:io player.data.se.homes[-1].z 1
scoreboard players operation #se.homes.z3 se.storage = #se.homes.z2 se.storage
scoreboard players operation #se.homes.z3 se.storage *= #se.const.100 se.storage
scoreboard players operation #se.homes.z1 se.storage -= #se.homes.z3 se.storage

#> If the player named their home, show the name. Otherwise show their home's information.
execute if data storage rx.playerdb:io player.data.se.homes[-1].name run tellraw @s ["",{"nbt":"player.data.se.homes[-1].id","storage":"rx.playerdb:io"},{"text":" - "},{"nbt":"player.data.se.homes[-1].name","color":"gold","interpret":true,"storage":"rx.playerdb:io","hoverEvent":{"action":"show_text","contents":["",{"text":"Coords: "},{"score":{"name":"#se.homes.x2","objective":"se.storage"},"color":"gold"},{"text":".","color":"gold"},{"score":{"name":"#se.homes.x1","objective":"se.storage"},"color":"gold"},{"text":" "},{"score":{"name":"#se.homes.y2","objective":"se.storage"},"color":"gold"},{"text":".","color":"gold"},{"score":{"name":"#se.homes.y1","objective":"se.storage"},"color":"gold"},{"text":" "},{"score":{"name":"#se.homes.z2","objective":"se.storage"},"color":"gold"},{"text":".","color":"gold"},{"score":{"name":"#se.homes.z1","objective":"se.storage"},"color":"gold"},{"text":"\nDimension: "},{"nbt":"player.data.se.homes[-1].dimName","storage":"rx.playerdb:io","color":"gold"}]}}]
execute unless data storage rx.playerdb:io player.data.se.homes[-1].name run tellraw @s ["",{"nbt":"player.data.se.homes[-1].id","storage":"rx.playerdb:io"},{"text":" - "},{"score":{"name":"#se.homes.x2","objective":"se.storage"},"color":"gold"},{"text":".","color":"gold"},{"score":{"name":"#se.homes.x1","objective":"se.storage"},"color":"gold"},{"text":" "},{"score":{"name":"#se.homes.y2","objective":"se.storage"},"color":"gold"},{"text":".","color":"gold"},{"score":{"name":"#se.homes.y1","objective":"se.storage"},"color":"gold"},{"text":" "},{"score":{"name":"#se.homes.z2","objective":"se.storage"},"color":"gold"},{"text":".","color":"gold"},{"score":{"name":"#se.homes.z1","objective":"se.storage"},"color":"gold"},{"text":" in "},{"nbt":"player.data.se.homes[-1].dimName","storage":"rx.playerdb:io","color":"gold"}]

#> Clean up info.
data remove storage rx.playerdb:io player.data.se.homes[-1]
scoreboard players remove #se.homes.total se.storage 1
execute if score #se.homes.total se.storage matches 1.. run function se:home/list/loop/line