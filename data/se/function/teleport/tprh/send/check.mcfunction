# Redirect to respective spots
execute store result storage se:storage query.val int -1 run scoreboard players get @s se.uid
execute as @a if score @s se.uid = @a[tag=se.tprh.target,limit=1] tprh run function se:teleport/tprh/send/action with storage se:storage query
execute unless entity @a[tag=se.tprh.destination] run return fail
scoreboard players operation @s se.cache.tprh = @s tprh
tellraw @s ["",{text:"[TPrH]",color:"green"},{text:" Sent teleport request to "},{selector:"@a[tag=se.tprh.destination]"},"."]
tag @a remove se.tprh.destination
return 1