data modify storage rx:io playerdb.player.data.se.temphomes prepend from storage rx:io playerdb.player.data.se.homes[0]
data remove storage rx:io playerdb.player.data.se.homes[0]
function se:home/cycle