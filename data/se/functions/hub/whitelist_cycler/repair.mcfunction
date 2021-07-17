# Finalization Function
# - Called by se:hub/whitelist_cycler/compare
# Context: Player in whitelist

#> Combine Lists
data modify storage se:cycler l2 append from storage se:cycler l1[]
data modify storage rx:io playerdb.player.data.se.hub.whitelist set from storage se:cycler l2