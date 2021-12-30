#
#
# Context: Destination Player

#> Set Cache
scoreboard players operation @a[tag=se.tprh.target] se.tprh.cache = @s rx.uid
function #rx.playerdb:api/v2/get/self

#> Display Messages
tellraw @a[tag=se.tprh.target,limit=1,tag=!se.mute.tpr,tag=!se.mute.system] ["",{"text":"[TPrH] ","color":"green"},{"text":"Sent teleport request to "},{"storage":"rx.playerdb:io","nbt":"player.info.name","color":"gold"},{"text":"."}]
execute as @a[tag=se.tprh.target,limit=1] run function #rx.playerdb:api/v2/get/self
tellraw @s[tag=!se.mute.tpr,tag=!se.mute.system] ["",{"text":"[TPrH] ","color":"green"},{"storage":"rx.playerdb:io","nbt":"player.info.name","color":"gold"},{"text":" would like you to teleport to them. To accept, type "},{"text":"/trigger tprh set -","clickEvent":{"action":"suggest_command","value":"/trigger tprh set -"},"hoverEvent":{"action":"show_text","value":"Click to put the base command in your chat!"}},{"score":{"name":"@a[tag=se.tprh.target,limit=1]","objective":"rx.uid"}}]
tag @a remove se.tprh.target
