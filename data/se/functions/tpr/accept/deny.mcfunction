tag @s add se.tpr.target
execute as @a if score @s se.tpr.cache = @a[tag=se.tpr.target,limit=1] rx.uid run tag @s add se.tpr.denied
tag @s remove se.tpr.target
tellraw @s[tag=!se.mute.system] ["",{"text":"[TPr] ","color":"green"},{"text":"Denied all inbound teleport requests."}]
function #rx.playerdb:api/v2/get/self
execute as @a[tag=se.tpr.denied] run function se:tpr/accept/inform_denied