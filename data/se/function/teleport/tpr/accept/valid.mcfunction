tp @s @a[tag=se.tpr.check,limit=1]
tellraw @s ["",{text:"[TPr]",color:"green"},{text:" Teleported to "},{selector:"@a[tag=se.tpr.check,limit=1]"}]
tellraw @a[tag=se.tpr.check,limit=1] ["",{text:"[TPr]",color:"green"},{text:"Teleported "},{selector:"@s"},{text:" to you."}]
scoreboard players reset @s se.cache.tpr
tag @a remove se.tpr.check