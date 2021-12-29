function #rx.playerdb:api/v2/get/self

execute as @a[tag=!se.mute.tpr,tag=!se.mute.system] if score @s rx.uid = @a[tag=se.tprh.target,limit=1] se.tprh.cache run tellraw @s ["",{"text":"[TPrH] ","color":"green"},{"storage":"rx.playerdb:io","nbt":"player.info.name","color":"gold"},{"text":" canceled their teleport request."}]
scoreboard players reset @s se.tprh.cache
tellraw @s[tag=!se.mute.tpr,tag=!se.mute.system] ["",{"text":"[TPrH] ","color":"green"},{"text":"Canceled teleport request."}]