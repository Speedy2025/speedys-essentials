# Objective: Send (and store) a teleport request (TPr)
#
# 1) Store TPR score into self's cache
# 2) Tag everyone with the same rx.uid score as self's cache (should only be one user)
# 3) Message the tagged player with the request message
# END
tag @s add se.target
scoreboard players operation @s se.tpr.cache = @s tpr
execute as @a if score @s rx.uid = @a[tag=se.target,limit=1] tpr run tag @s add se.destination
function rx.playerdb:api/get_self
tellraw @a[tag=se.destination] ["",{"text":"[TPr] ","color":"green"},{"text":"You have recieved a teleport request from "},{"storage":"rx:io","nbt":"playerdb.player.info.name","color":"gold"},{"text":". To accept, type "},{"text":"/trigger tpr set -","color":"gold","clickEvent":{"action":"suggest_command","value":"/trigger tpr set "}},{"score":{"name":"@a[tag=se.target,limit=1]","objective":"rx.uid"},"color":"gold"}]
data remove storage rx:io playerdb
execute as @a[tag=se.destination] run function rx.playerdb:api/get_self
tellraw @a[tag=se.target] ["",{"text":"[TPr] ","color":"green"},{"text":"You sent a request to "},{"storage":"rx:io","nbt":"playerdb.player.info.name","color":"gold"},{"text":"."}]
tag @a[tag=se.target] remove se.target
tag @a[tag=se.destination] remove se.destination