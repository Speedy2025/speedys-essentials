# Display of successful home set
# - Called by se:home/root
# Context: Successful Player

#> STEP 1 - MAKE NUMBER ROUNDED TO 2 PLACES
# 1- Store the coords, scaled by 100 (1.55678 -> 155)
# 2- Store the coords, scaled by 1 (1.55678 -> 1)
# 3- Take #2 and scale THAT by 100 (1.55678 -> 100)
# 1- Take #1 and subtract #3 to get the 2 decimal places (1.55678 -> 155-100 -> 55)

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

#> STEP 2 - DISPLAY CLEAN NUMBERS
# Numbers are in the format #2.#1

tellraw @s[tag=!se.mute.system] ["",{"text":"[Homes] ","color":"green"},{"text":"Set home "},{"score":{"name":"@s","objective":"home"},"color":"gold"},{"text":" to "},{"score":{"name":"#se.homes.x2","objective":"se.storage"},"color":"gold"},{"text":".","color":"gold"},{"score":{"name":"#se.homes.x1","objective":"se.storage"},"color":"gold"},{"text":" "},{"score":{"name":"#se.homes.y2","objective":"se.storage"},"color":"gold"},{"text":".","color":"gold"},{"score":{"name":"#se.homes.y1","objective":"se.storage"},"color":"gold"},{"text":" "},{"score":{"name":"#se.homes.z2","objective":"se.storage"},"color":"gold"},{"text":".","color":"gold"},{"score":{"name":"#se.homes.z1","objective":"se.storage"},"color":"gold"},{"text":"."}]