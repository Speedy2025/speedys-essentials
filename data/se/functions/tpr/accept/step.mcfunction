
#> Tag player for tracking
tag @s add se.tpr.dest

execute as @a if score @s rx.uid = @a[tag=se.tpr.dest,limit=1] tpr run function se:tpr/accept/action
execute as @a unless score @s rx.uid = @a[tag=se.tpr.dest,limit=1] tpr as @a[tag=se.tpr.dest,limit=1] run tellraw @s[tag=!se.mute.system] ["",{"text":"[TPr] ","color":"green"},{"text":"That player has not sent a request or is offline."}]

tag @s remove se.tpr.dest