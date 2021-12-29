
#> Redirects them to their respective spots
execute as @a if score @s rx.uid = @a[tag=se.tprh.target,limit=1] tpr run function se:tprh/send/action

#> Saves code ＼_(ｏ_ｏ)_／
#They will NOT have the tag if it went well.
tellraw @s[tag=se.tprh.target,tag=!se.mute.tpr,tag=!se.mute.system] ["",{"text":"[TPrH] ","color":"green"},{"text":"You cannot send a teleport request to an offline player."}]
tag @s remove se.tprh.target