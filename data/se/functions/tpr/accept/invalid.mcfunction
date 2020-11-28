tellraw @a[tag=se.destination] ["",{"text":"[TPr] ","color":"green"},{"text":"That person has not sent a teleport request."}]
scoreboard players set #tpr.success se.internal 1
tag @a[tag=se.target] remove se.target
tag @a[tag=se.destination] remove se.destination