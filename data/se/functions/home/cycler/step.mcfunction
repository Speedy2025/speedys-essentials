# Preparations for the cycler
# - Called by se:home/cycler/root
# Context: Player

#> Reset l2 and set l1 to the input
data modify storage se:cycler l2 set value []
data modify storage se:cycler l1 set from storage rx:io playerdb.player.data.se.homes

#> Straight into the heart!
function se:home/cycler/compare

#> If the result is 2, repair the list
execute if score #se.homes.result se.storage matches 2 run function se:home/cycler/repair