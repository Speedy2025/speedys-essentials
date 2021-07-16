
#> Redirects them to their respective spots
execute as @a if score @s rx.uid = @a[tag=se.tpr.target,limit=1] tpr run function se:tpr/send/action

#> Saves code ＼_(ｏ_ｏ)_／
#They will NOT have the tag if it went well.
tellraw @s[tag=se.tpr.target,tag=!se.mute.tpr,tag=!se.mute.system] ["",{"text":"[TPr] ","color":"green"},{"text":"You cannot send a teleport request to an offline player."}]
tag @s remove se.tpr.target