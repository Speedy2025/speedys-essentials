tag @s add se.tpr.target
#execute if score @s se.uid = @s tpr if function se:teleport/tpr/send/cancel run tellraw @s ["",{text:"[TPr]",color:"green"},{text:" You have no requests."}]
execute unless score @s se.uid = @s tpr unless function se:teleport/tpr/send/check run tellraw @s ["",{text:"[TPr]",color:"green"},{text:" You cannot send a request to an offline player."}]
execute if score @s se.uid = @s tpr run function se:teleport/tpr/send/cancel
tag @s remove se.tpr.target
scoreboard players reset @s tpr