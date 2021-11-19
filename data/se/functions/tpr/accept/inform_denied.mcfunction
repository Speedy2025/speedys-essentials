tag @s remove se.tpr.denied
tellraw @s ["",{"text":"[TPr] ","color":"green"},{"storage":"rx.playerdb:io","nbt":"player.info.name","color":"gold"},{"text":" denied your teleport request."}]
scoreboard players reset @s se.tpr.cache