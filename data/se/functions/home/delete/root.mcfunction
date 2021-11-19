# Root Delete Home Function
# - Called by se:main/tick
# Context: Player


# Absolutely not touching that code.
scoreboard players operation @s home = @s sethome

#> Get Homes
function #rx.playerdb:api/v2/get/self

#> Correct Input & Validate Input
scoreboard players operation @s home *= #se.const.n1 se.storage
function se:home/cycler/root

#> Display Bounding Error
execute if score #se.homes.result se.storage matches 1 run tellraw @s[tag=!se.mute.system] ["",{"text":"[Homes]","color":"green"},{"text":" You can only own "},{"score":{"name":"#se.homes.max","objective":"se.storage"},"color":"gold"},{"text":" homes."}]

#> Home was found, delete home -1
# Sometimes the simplist solutions are gud, just delete it quietly.
execute if score #se.homes.result se.storage matches 2 run data remove storage rx.playerdb:io player.data.se.homes[-1]
execute as @s[tag=!se.mute.system] if score #se.homes.result se.storage matches 2 run tellraw @s[tag=!se.mute.system] ["",{"text":"[Homes] ","color":"green"},{"text":"Deleted home "},{"score":{"name":"@s","objective":"home"},"color":"gold"},{"text":"."}]

#> Home was not found, nag user
execute if score #se.homes.result se.storage matches 3 run tellraw @s[tag=!se.mute.system] ["",{"text":"[Homes] ","color":"green"},{"text":"Home "},{"score":{"name":"@s","objective":"home"},"color":"gold"},{"text":" is not set."}]

#> Save Homes
function #rx.playerdb:api/v2/save/self

# My original design changed midway through making this datapack, so this line
#    is just to clean things up. I'd rather not try to hunt to fix it.
scoreboard players reset @s home