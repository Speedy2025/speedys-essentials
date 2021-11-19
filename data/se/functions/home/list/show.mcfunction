
#> Clean list of extra ending entries
scoreboard players remove #se.homes.list se.storage 5
execute if score #se.homes.total se.storage matches 11.. if score #se.homes.list se.storage matches 1.. run function se:home/list/loop/clean

#> Fix list lengths
execute store result score #se.homes.total se.storage run data get storage rx.playerdb:io player.data.se.homes

#> Display homes

# Line 1
tellraw @s ["",{"text":"\u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020","color":"blue","strikethrough":true},{"text":" [Homes] ","color":"green"},{"text":"\u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020","color":"blue","strikethrough":true}]

# Show Line loop
execute if score #se.homes.total se.storage matches 5.. run scoreboard players set #se.homes.total se.storage 5
function se:home/list/loop/line

tellraw @s ["",{"text":"\u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020","color":"blue","strikethrough":true},{"text":" [Homes] ","color":"green"},{"text":"\u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020","color":"blue","strikethrough":true}]
