# Root Set Home Function
# - Called by se:main/tick
# Context: Player


# See below about the design changes.
scoreboard players operation @s home = @s sethome

#> Get Homes
function rx.playerdb:api/get_self

#> Validate Input
function se:home/cycler/root

#> Display Bounding Error
execute if score #se.homes.result se.storage matches 1 run tellraw @s[tag=!se.mute.system] ["",{"text":"[Homes]","color":"green"},{"text":" You can only set "},{"score":{"name":"#se.homes.max","objective":"se.storage"},"color":"gold"},{"text":" homes."}]

#> Home was found, modify home -1
execute if score #se.homes.result se.storage matches 2 run function se:home/set/modify

#> Home was not found, append home
execute if score #se.homes.result se.storage matches 3 run function se:home/set/append

#> If Result of 2 or 3, It was successful and needs to be displayed
execute as @s[tag=!se.mute.system] if score #se.homes.result se.storage matches 2..3 run function se:home/set/success

#> Save Homes
function rx.playerdb:api/save_self

#> Unflipify the score so that we don't accidently teleport to it too
scoreboard players operation @s home *= #se.const.n1 se.storage

# My original design changed midway through making this datapack, so this line
#    is just to clean things up. I'd rather not try to hunt to fix it.
scoreboard players reset @s home