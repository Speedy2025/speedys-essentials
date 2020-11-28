# Objective: Accept a TPr and teleport the player to target.

# Set #tpr.success se.internal to 0, indicating that nothing went through and the target player is offline.
# Invert TPr Score
# Tag all players whos rx.uid score matches self's TPr score
# Check if tagged player has cache score matching self's rx.uid, run se:tpr/accept/teleport
# IF tagged player does not have cache score matching self's rx.uid, run se:tpr/accept/invalid
# IF #tpr.success se.internal is still 0, run se:tpr/accept/offline
scoreboard players operation @s tpr *= #const.-1 se.internal
scoreboard players set #tpr.success se.internal 0
tag @s add se.destination
execute as @a if score @s rx.uid = @a[tag=se.destination,limit=1] tpr run tag @s add se.target
execute as @a[tag=se.target] if score @s se.tpr.cache = @a[tag=se.destination,limit=1] rx.uid run function se:tpr/accept/teleport
execute as @a[tag=se.target] unless score @s se.tpr.cache = @a[tag=se.destination,limit=1] rx.uid run function se:tpr/accept/invalid
execute if score #tpr.success se.internal matches 0 run tellraw @s ["",{"text":"[TPr] ","color":"green"},{"text":"Sorry, but that person is offline"}]