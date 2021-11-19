# Clears unneeded home entries for easy access
# - Called by se:home/list/show
# Context: Player
data remove storage rx.playerdb:io player.data.se.homes[-1]
scoreboard players remove #se.homes.list se.storage 1
execute if score #se.homes.list se.storage matches 1.. run function se:home/list/loop/clean