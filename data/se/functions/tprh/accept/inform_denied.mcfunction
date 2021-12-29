tag @s remove se.tprh.denied
tellraw @s ["",{"text":"[TPrH] ","color":"green"},{"storage":"rx.playerdb:io","nbt":"player.info.name","color":"gold"},{"text":" denied your teleport request."}]
scoreboard players reset @s se.tprh.cache