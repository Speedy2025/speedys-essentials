# Redirect to respective spots
execute store result storage se:storage query.val int -1 run scoreboard players get @s se.uid
execute as @a if score @s se.uid = @a[tag=se.tpr.target,limit=1] tpr run function se:teleport/tpr/send/action with storage se:storage query
execute unless entity @a[tag=se.tpr.destination] run return fail
scoreboard players operation @s se.cache.tpr = @s tpr
tellraw @s ["",{text:"[TPr]",color:"green"},{text:" Sent teleport request to "},{selector:"@a[tag=se.tpr.destination]"},"."]
tag @a remove se.tpr.destination
return 1