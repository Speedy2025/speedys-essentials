tag @s add se.tprh.target
execute as @a if score @s se.tprh.cache = @a[tag=se.tprh.target,limit=1] rx.uid run tag @s add se.tprh.denied
tag @s remove se.tprh.target
tellraw @s[tag=!se.mute.system] ["",{"text":"[TPrH] ","color":"green"},{"text":"Denied all inbound teleport requests."}]
function #rx.playerdb:api/v2/get/self
execute as @a[tag=se.tpr.denied] run function se:tprh/accept/inform_denied