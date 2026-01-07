############################
# Initialize "New" Players #
############################

# If a player changes their name, their scores may change.
# We need to detect this while also catching new players.
# This is done in initialize/start

execute as @a unless score @s se.uid = @s se.uid run function se:initialize/start

#########
# Homes #
#########

# Every player should be initialized by now. They may not have a home, though.

execute as @a[scores={home=1..}] run function se:homes/teleport/start
execute as @a[scores={home=..-1}] run function se:homes/menu/start

execute as @a[scores={sethome=1..}] run function se:homes/create/start
execute as @a[scores={sethome=..-1}] run function se:homes/remove/start

##############
# TPr / TPrH #
##############

# TPr is self-containing. Anyone initialized can use it.

execute as @a[scores={tpr=1..}] run function se:teleport/tpr/send/root
execute as @a[scores={tpr=..-1}] run function se:teleport/tpr/accept/root

execute as @a[scores={tprh=1..}] run function se:teleport/tprh/send/root
execute as @a[scores={tprh=..-1}] run function se:teleport/tprh/accept/root

########
# Hubs #
########

# Like TPr/TPrH, hubs is self-containing. It requires homes (specifically that se.maxHomes is in)

execute as @a[scores={hub=1..}] run function se:hubs/teleport/root
execute as @a[scores={hub=..-1}] run function se:hubs/menu/root

###########
# SE_HELP #
###########
execute as @a[scores={se_help=1..}] run function se:help/root

########
# List #
########
execute as @a[scores={list=1..}] run function se:list/list_online
execute as @a[scores={list=..-1}] run function se:list/list_page


#########
# Reset #
#########

# Used to re-enable each feature after every tick, in case it was used.

scoreboard players reset @a home
scoreboard players reset @a sethome
scoreboard players reset @a tpr
scoreboard players reset @a tprh
scoreboard players reset @a hub
scoreboard players reset @a se_help
scoreboard players reset @a list

scoreboard players enable @a[tag=!se.disable.all,tag=!se.disable.homes] home
scoreboard players enable @a[tag=!se.disable.all,tag=!se.disable.homes] sethome
scoreboard players enable @a[tag=!se.disable.all,tag=!se.disable.tpr] tpr
scoreboard players enable @a[tag=!se.disable.all,tag=!se.disable.tpr] tprh
scoreboard players enable @a[tag=!se.disable.all,tag=!se.disable.hub] hub
scoreboard players enable @a[tag=!se.disable.all,tag=!se.disable.help] se_help
scoreboard players enable @a[tag=!se.disable.all,tag=!se.disable.list] list