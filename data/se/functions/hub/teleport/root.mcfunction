# First, obtain the target hub information (if any)

# If hub has info:
#  1) Check if locked
#  2) If not locked, set coords and tp
#  3) If locked, but is your uid, set coords and tp
# If hub doesn't have info:
#  1) Return Null Hub
# If hub has info but is locked:
#  1) Return Locked Hub

#Get Target Hub Information
data remove storage rx:io playerdb
scoreboard players operation $in.uid rx.io = @s hub
function rx.playerdb:api/get
execute store result score #hub.exist se.internal run data get storage rx:io playerdb.player.data.se.hub
execute if score #hub.exist se.internal matches 0 run tellraw @s ["",{"text":"[Hubs] ","color":"green"},{"text":"Sorry, but hub "},{"score":{"name":"@s","objective":"hub"},"color":"gold"},{"text":" does not exist."}]
execute if score #hub.exist se.internal matches 1.. unless score @s rx.uid = @s hub unless entity @s[tag=se.bypass] run function se:hub/teleport/check_valid
execute if score #hub.exist se.internal matches 1.. if score @s rx.uid = @s hub run function se:hub/teleport/action
execute if score #hub.exist se.internal matches 1.. unless score @s rx.uid = @s hub if entity @s[tag=se.bypass] run function se:hub/teleport/action