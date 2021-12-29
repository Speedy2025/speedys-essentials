
#Just reversed TPr's style since it's the same, but the other way.
tp @a[tag=se.tprh.dest,limit=1] @s 
scoreboard players reset @s se.tprh.cache

#Send Message to Self
execute as @a[tag=se.tprh.dest] run function #rx.playerdb:api/v2/get/self
tellraw @s[tag=!se.mute.tpr,tag=!se.mute.system] ["",{"text":"[TPrH] ","color":"green"},{"storage":"rx.playerdb:io","nbt":"player.info.name","color":"gold"},{"text":" accepted the request."}]

function #rx.playerdb:api/v2/get/self
tellraw @a[tag=se.tprh.dest,tag=!se.mute.tpr,tag=!se.mute.system] ["",{"text":"[TPrH] ","color":"green"},{"text":"Accepted "},{"storage":"rx.playerdb:io","nbt":"player.info.name","color":"gold"},{"text":"'s","color":"gold"},{"text":" request."}]
scoreboard players set @a[tag=se.tprh.dest,limit=1] tprh 0
tag @a remove se.tprh.dest