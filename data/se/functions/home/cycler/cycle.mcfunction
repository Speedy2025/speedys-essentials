# Cycles the list
# - Called by se:home/cycler/step
# Context: Player

data modify storage se:cycler l2 append from storage se:cycler l1[-1]
data remove storage se:cycler l1[-1]
tellraw @s[tag=se.debug] "<Cycled List>"
function se:home/cycler/compare
#] @Speedy2025#2025