function rx.playerdb:api/get_self

execute as @a[tag=!se.mute.tpr,tag=!se.mute.system] if score @s rx.uid = @a[tag=se.tpr.target,limit=1] se.tpr.cache run tellraw @s ["",{"text":"[TPr] ","color":"green"},{"storage":"rx:io","nbt":"playerdb.player.info.name","color":"gold"},{"text":" canceled their teleport request."}]
scoreboard players reset @s se.tpr.cache
tellraw @s[tag=!se.mute.tpr,tag=!se.mute.system] ["",{"text":"[TPr] ","color":"green"},{"text":"Canceled teleport request."}]