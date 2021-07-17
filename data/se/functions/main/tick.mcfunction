# Primary Ticking Function
# - Executes on Tick
# Context: Server

#I have a system for naming functions, though I may deviate sometimes.
# root.mcfunction - The base function for that section
# step.mcfunction - Preparations for an action function (may/may not be named action)
# action.mcfunction - Function taking freshly-processed information and acting upon it
#                       Note: this is usually the LAST function in a chain

#> Add 1 to all online players' ontime
scoreboard players add @a[tag=!se.afk] tse_Ontime 1

#> Timer for moving dimension AECs
#This is a fix for 1.17, waiting 10 seconds to move the AEC
scoreboard players add @e[tag=se.dim.marker,scores={se.storage=1..}] se.storage 1
execute as @e[tag=se.dim.marker] if score @s se.storage matches 201.. at @s run function se:misc/dimension/finalize

#> Register any unregistered players, delayed 1 tick to prevent conflicts
execute as @a[scores={tse_Ontime=2..},tag=!se.registered] run function se:misc/register

#> Handle Homes [Teleport & Set]
execute as @a[scores={home=1..},tag=!se.disable.homes] at @s run function se:home/teleport/root
execute as @a[scores={home=..-1},tag=!se.disable.homes] at @s run function se:home/list/root
execute as @a[scores={sethome=1..},tag=!se.disable.homes] at @s run function se:home/set/root
execute as @a[scores={sethome=..-1},tag=!se.disable.homes] at @s run function se:home/delete/root

#> Handle Hubs [Teleport/Whitelist & Options]
execute as @a[scores={hub=1..},tag=!se.disable.hubs] at @s run function se:hub/redirect
execute as @a[scores={hub=..-1},tag=!se.disable.hubs] at @s run function se:hub/options/root

#> Handle TPr [Teleport & Set]
execute as @a[scores={tpr=1..},tag=!se.disable.tpr] run function se:tpr/send/root
execute as @a[scores={tpr=..-1},tag=!se.disable.tpr] run function se:tpr/accept/root

#> Handle se_help
execute as @a[scores={se_help=1..},tag=!se.disable.se_help] run function se:help/root

#> Handle Ontime
execute as @a[scores={ontime=1..},tag=!se.disable.ontime] run function se:misc/ontime/lookup/root 

#> Reset All Scores
scoreboard players reset @a home
scoreboard players reset @a sethome
scoreboard players reset @a hub
scoreboard players reset @a tpr
scoreboard players reset @a ontime
scoreboard players reset @a se_help

#> Re-enable all scores, except if forbidden by se.disable.all
scoreboard players enable @a[tag=!se.disable.all] home
scoreboard players enable @a[tag=!se.disable.all] sethome
scoreboard players enable @a[tag=!se.disable.all] hub
scoreboard players enable @a[tag=!se.disable.all] tpr
scoreboard players enable @a[tag=!se.disable.all] ontime
scoreboard players enable @a[tag=!se.disable.all] se_help

tellraw @a[tag=se.debug.tick] "<Pack Ticked>"
