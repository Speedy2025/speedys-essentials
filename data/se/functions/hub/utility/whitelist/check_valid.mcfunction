# First, compare target ontime to current ontime.
#     - IF less or equal, then all good!
#     - ELSE then untag the player, ignore following functions.
#          > I will do actual work inside each of the whitelist
#            functions, so this shouldn't be a problem.
#
# Reminder: rx.playerdb:io player.se.hub.whitelist[]


execute if score @s hub = @s rx.uid run function se:hub/utility/whitelist/not_valid
execute if score @s hub = @s rx.uid run tellraw @s ["",{"text":"[Hubs] ","color":"green"},{"text":"Canceled player input."}]

execute unless score @s hub = @s rx.uid run function se:hub/utility/whitelist/is_valid