tag @s add se.tpr.target
execute as @a[tag=!se.tpr.target] if score @s se.uid = @a[tag=se.tpr.target,limit=1] se.cache.tpr run tellraw @s ["",{text:"[TPr] ",color:"green"},{selector:"@a[tag=se.tpr.target,limit=1]"},{text:" cancelled their request."}]
tag @s remove se.tpr.target
execute if score @s se.cache.tpr matches 1.. run tellraw @s ["",{text:"[TPr]",color:"green"},{text:" Cancelled request to teleport."}]
execute unless score @s se.cache.tpr matches 1.. run tellraw @s ["",{text:"[Tpr]",color:"green"},{text:" You don't have any requests."}]
scoreboard players reset @s se.cache.tpr