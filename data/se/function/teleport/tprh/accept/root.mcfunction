tag @s add se.tprh.check
scoreboard players operation @s tprh *= #se.n1 se.maxHomes
execute as @a[tag=!se.tprh.check] if score @s se.cache.tprh = @a[tag=se.tprh.check,limit=1] se.uid run function se:teleport/tprh/accept/valid
execute if entity @s[tag=se.tprh.check] run tellraw @s ["",{text:"[TPrH]",color:"green"},{text:" There are no requests from that player."}]
tag @a remove se.tprh.check
scoreboard players reset @s tprh