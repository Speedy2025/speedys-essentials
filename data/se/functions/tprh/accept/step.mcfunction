
#> Tag player for tracking
tag @s add se.tprh.dest

#> Attempt to teleport the player
#It SETS the score of tprh to 0 if it's successful!
execute as @a if score @s se.tprh.cache = @a[tag=se.tprh.dest,limit=1] rx.uid run function se:tprh/accept/action
execute unless score @s tprh matches 0 run tellraw @s[tag=!se.mute.system] ["",{"text":"[TPrH] ","color":"green"},{"text":"That player has not sent a request or is offline."}]
tag @s remove se.tprh.dest