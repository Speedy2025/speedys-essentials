tp @a[tag=se.target,limit=1] @a[tag=se.destination,limit=1]
tellraw @a[tag=se.target] ["",{"text":"[TPr] ","color":"green"},{"text":"Your teleport request was accepted."}]
tellraw @a[tag=se.destination] ["",{"text":"[TPr] ","color":"green"},{"text":"Accepted their teleport request."}]
scoreboard players reset @a[tag=se.target] se.tpr.cache
scoreboard players set #tpr.success se.internal 1
tag @a[tag=se.target] remove se.target
tag @a[tag=se.destination] remove se.destination