#data get storage rx.playerdb:io player.data.se.hub.whitelist[0]
data modify storage rx.playerdb:io player.data.se.hub.whitelist append from storage rx.playerdb:io player.data.se.hub.whitelist[0]
data remove storage rx.playerdb:io player.data.se.hub.whitelist[0]

function se:hub/whitelist/loop