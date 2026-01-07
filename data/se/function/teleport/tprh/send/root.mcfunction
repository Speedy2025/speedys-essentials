tag @s add se.tprh.target
#execute if score @s se.uid = @s tpr if function se:teleport/tpr/send/cancel run tellraw @s ["",{text:"[TPr]",color:"green"},{text:" You have no requests."}]
execute unless score @s se.uid = @s tprh unless function se:teleport/tprh/send/check run tellraw @s ["",{text:"[TPrH]",color:"green"},{text:" You cannot send a request to an offline player."}]
execute if score @s se.uid = @s tprh run function se:teleport/tprh/send/cancel
tag @s remove se.tprh.target
scoreboard players reset @s tprh