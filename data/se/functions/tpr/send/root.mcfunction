

#> Tag Self to track
tag @s add se.tpr.target

#> Check if they entered their own uid
execute unless score @s rx.uid = @s tpr run function se:tpr/send/check
execute if score @s rx.uid = @s tpr run function se:tpr/send/cancel