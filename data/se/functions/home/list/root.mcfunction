# Root List Home Function
# - Called by se:main/tick
# Context: Player

#> Get Homes
function #rx.playerdb:api/v2/get/self

#> Get the highest possible index of the list
scoreboard players set #se.homes.list se.storage 5
scoreboard players operation @s home *= #se.const.n1 se.storage
scoreboard players operation #se.homes.list se.storage *= @s home

#> Get the total homes and add 5 to compare
execute store result score #se.homes.total se.storage run data get storage rx.playerdb:io player.data.se.homes
scoreboard players add #se.homes.total se.storage 5

#> If highest possible index < homes + 5 then we're OK to continue!
execute unless score #se.homes.list se.storage < #se.homes.total se.storage run tellraw @s[tag=!se.mute.system] ["",{"text":"[Homes] ","color":"green"},{"text":"Page "},{"score":{"name":"@s","objective":"home"},"color":"gold"},{"text":" does not exist."}]
execute if score #se.homes.list se.storage < #se.homes.total se.storage run function se:home/list/show
# Note: DO NOT save it.