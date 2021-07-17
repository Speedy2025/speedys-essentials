
#> Tag player for tracking
tag @s add se.tpr.dest

#> Attempt to teleport the player
#It SETS the score of tpr to 0 if it's successful!
execute as @a if score @s se.tpr.cache = @a[tag=se.tpr.dest,limit=1] rx.uid run function se:tpr/accept/action
execute unless score @s tpr matches 0 run tellraw @s[tag=!se.mute.system] ["",{"text":"[TPr] ","color":"green"},{"text":"That player has not sent a request or is offline."}]
tag @s remove se.tpr.dest