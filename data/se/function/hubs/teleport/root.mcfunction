#############
# List Mode #
#############

execute if score @s[tag=se.hub.list] hub = @s se.uid if function se:hubs/menu/list/disable run return 1
execute if score @s[tag=se.hub.list] hub matches 1.. unless score @s hub = @s se.uid run function se:hubs/menu/list/add_step
execute if score @s[tag=se.hub.list] hub matches 1.. unless score @s hub = @s se.uid run return 1

#################
# Initial Check #
#################

# Get rid of ourselves, if we're just going to our place.
# Save a LOT of computation doing so.
execute if score @s se.uid = @s hub if function se:hubs/teleport/teleport_self run return 1

# From here, we are visiting. 
# We need to first verify the TYPE of list and if we're on it.
# If default, skip checks and go.
# If whitelist, check if we're on it - if so, then go
# If blacklist, check if we're on it - if not, then go

# 1. Prepare Query for US and THEM
#    Store our UID and theirs
execute store result storage se:storage query.their_uid int 1 run scoreboard players get @s hub
execute store result storage se:storage query.my_uid int 1 run scoreboard players get @s se.uid

#We aren't finished, but macros will have to start taking effect.
#Look up their UUID. Stuff is stored by that primarily.
function se:hubs/teleport/prepare_check with storage se:storage query
data remove storage se:storage query