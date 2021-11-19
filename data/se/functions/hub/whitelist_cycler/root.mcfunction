# Base Whitelist Cycler
# - Called by se:hub/teleport/check_permission & se:hub/options/...
# Context: Player

#> There isn't any need to "filter" input here, so I won't bother with it.
# Unlike homes, it's OK to have a length of 0, just means it isn't there.

# Reset Checking
scoreboard players set #se.hub.whitelist se.storage 2

# Setup Lists
data modify storage se:cycler l2 set value []
data modify storage se:cycler l1 set from storage rx.playerdb:io player.data.se.hub.whitelist

function se:hub/whitelist_cycler/compare