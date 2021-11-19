data modify storage rx.playerdb:io player.data.se.temphomes prepend from storage rx.playerdb:io player.data.se.homes[0]
data remove storage rx.playerdb:io player.data.se.homes[0]
function se:home/cycle