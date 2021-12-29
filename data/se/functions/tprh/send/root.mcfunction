

#> Tag Self to track
tag @s add se.tprh.target

#> Check if they entered their own uid
execute unless score @s rx.uid = @s tprh run function se:tprh/send/check
execute if score @s rx.uid = @s tprh run function se:tprh/send/cancel