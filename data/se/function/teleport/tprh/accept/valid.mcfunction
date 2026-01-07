tp @a[tag=se.tprh.check,limit=1] @s 
tellraw @s ["",{text:"[TPrH]",color:"green"},{text:" Teleported "},{selector:"@a[tag=se.tprh.check,limit=1]"},{text:" to you."}]
tellraw @a[tag=se.tprh.check,limit=1] ["",{text:"[TPrH]",color:"green"},{text:" Teleported to "},{selector:"@s"}]
scoreboard players reset @s se.cache.tprh
tag @a remove se.tprh.check