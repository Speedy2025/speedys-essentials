# Get the current uid
# If it's a match, return -1
# If it isn't the last, cycle the list.
execute store result score #hub.current se.internal run data get storage rx.playerdb:io player.data.se.hub.whitelist[0]
execute if score #hub.whitelist se.internal = #hub.current se.internal run scoreboard players set #hub.whitelisted se.internal -1
execute unless score #hub.whitelist se.internal = #hub.current se.internal unless score #hub.current se.internal = #hub.last se.internal run function se:hub/whitelist/cycle