

tp @s @a[tag=se.tpr.dest,limit=1]
scoreboard players reset @s se.tpr.cache
#Send Message to Self
execute as @a[tag=se.tpr.dest] run function #rx.playerdb:api/v2/get/self
tellraw @s[tag=!se.mute.tpr,tag=!se.mute.system] ["",{"text":"[TPr] ","color":"green"},{"storage":"rx.playerdb:io","nbt":"player.info.name","color":"gold"},{"text":" accepted the request."}]

function #rx.playerdb:api/v2/get/self
tellraw @a[tag=se.tpr.dest,tag=!se.mute.tpr,tag=!se.mute.system] ["",{"text":"[TPr] ","color":"green"},{"text":"Accepted "},{"storage":"rx.playerdb:io","nbt":"player.info.name","color":"gold"},{"text":"'s","color":"gold"},{"text":" request."}]
scoreboard players set @a[tag=se.tpr.dest,limit=1] tpr 0
tag @a remove se.tpr.dest