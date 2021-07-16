#
#
# Context: Destination Player

#> Set Cache
scoreboard players operation @a[tag=se.tpr.target] se.tpr.cache = @s rx.uid
function rx.playerdb:api/get_self

#> Display Messages
tellraw @a[tag=se.tpr.target,limit=1,tag=!se.mute.tpr,tag=!se.mute.system] ["",{"text":"[TPr] ","color":"green"},{"text":"Sent teleport request to "},{"storage":"rx:io","nbt":"playerdb.player.info.name","color":"gold"},{"text":"."}]
execute as @a[tag=se.tpr.target,limit=1] run function rx.playerdb:api/get_self
tellraw @s[tag=!se.mute.tpr,tag=!se.mute.system] ["",{"text":"[TPr] ","color":"green"},{"storage":"rx:io","nbt":"playerdb.player.info.name","color":"gold"},{"text":" would like to teleport to you. To accept, type "},{"text":"/trigger tpr set -","clickEvent":{"action":"suggest_command","value":"/trigger tpr set -"},"hoverEvent":{"action":"show_text","value":"Click to put the base command in your chat!"}},{"score":{"name":"@a[tag=se.tpr.target,limit=1]","objective":"rx.uid"}}]
tag @a remove se.tpr.target
