tag @s add se.tprh.target
execute as @a[tag=!se.tprh.target] if score @s se.uid = @a[tag=se.tprh.target,limit=1] se.cache.tprh run tellraw @s ["",{text:"[TPrH] ",color:"green"},{selector:"@a[tag=se.tprh.target,limit=1]"},{text:" cancelled their request."}]
tag @s remove se.tprh.target
execute if score @s se.cache.tprh matches 1.. run tellraw @s ["",{text:"[TPrH]",color:"green"},{text:" Cancelled request to teleport."}]
execute unless score @s se.cache.tprh matches 1.. run tellraw @s ["",{text:"[TprH]",color:"green"},{text:" You don't have any requests."}]
scoreboard players reset @s se.cache.tprh