

#> Flip score to be readable & easier to manage
scoreboard players operation @s tpr *= #se.const.n1 se.storage

#> Handle Denying a Teleport Request
#Hmm... name checks out...

execute unless score @s rx.uid = @s tpr run function se:tpr/accept/step
execute if score @s rx.uid = @s tpr run function se:tpr/accept/deny
