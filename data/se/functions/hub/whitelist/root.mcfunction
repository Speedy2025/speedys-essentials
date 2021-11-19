execute store result score #hub.last se.internal run data get storage rx.playerdb:io player.data.se.hub.whitelist[-1]
scoreboard players set #hub.whitelisted se.internal 0
function se:hub/whitelist/loop