tellraw @s ["",{"text":"\u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020","color":"blue","strikethrough":true},{"text":" [Homes] ","color":"green"},{"text":"\u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020","color":"blue","strikethrough":true}]

execute store result storage se:storage query.val int -1 run scoreboard players get @s home
data modify storage se:storage query.UUID set from entity @s UUID
function se:homes/menu/loop/root with storage se:storage query

execute store result storage se:storage query.PageCurr int 1 run scoreboard players get @s home
execute store result storage se:storage query.PagePrev int 1 run scoreboard players remove @s home 1
execute store result storage se:storage query.PageNext int 1 run scoreboard players add @s home 2
scoreboard players remove @s home 1

execute if score #se.home_count se.maxHomes matches 1.. if score #se.pages se.maxHomes matches 2.. run function se:homes/menu/show_page with storage se:storage query
data remove storage se:storage query

#inside se:homes/menu, we know if there's multiple pages (#se.pages maxHomes) and which page we're on (@s home)
tellraw @s ["",{"text":"\u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020","color":"blue","strikethrough":true},{"text":" [Homes] ","color":"green"},{"text":"\u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020","color":"blue","strikethrough":true}]