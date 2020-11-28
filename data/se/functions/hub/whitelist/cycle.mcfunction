#data get storage rx:io playerdb.player.data.se.hub.whitelist[0]
data modify storage rx:io playerdb.player.data.se.hub.whitelist append from storage rx:io playerdb.player.data.se.hub.whitelist[0]
data remove storage rx:io playerdb.player.data.se.hub.whitelist[0]

function se:hub/whitelist/loop