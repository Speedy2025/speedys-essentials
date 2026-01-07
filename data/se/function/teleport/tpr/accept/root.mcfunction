tag @s add se.tpr.check
scoreboard players operation @s tpr *= #se.n1 se.maxHomes
execute as @a[tag=!se.tpr.check] if score @s se.cache.tpr = @a[tag=se.tpr.check,limit=1] se.uid run function se:teleport/tpr/accept/valid
execute if entity @s[tag=se.tpr.check] run tellraw @s ["",{text:"[TPr]",color:"green"},{text:" There are no requests from that player."}]
tag @a remove se.tpr.check
scoreboard players reset @s tpr