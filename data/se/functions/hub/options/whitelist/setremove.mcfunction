# Set Hub to Remove mode
# - Called by se:hub/root
# Context: Player
tag @s remove se.whitelist.add
tag @s add se.whitelist.remove
tellraw @s[tag=!se.mute.system] ["",{"text":"[Hubs] ","color":"green"},{"text":"Removing users from the whitelist. Type "},{"text":"/trigger hub set #","color":"gold"},{"text":", replacing # with the desired uid, to remove players. To stop, type "},{"text":"/trigger hub set ","color":"gold"},{"score":{"name":"@s","objective":"rx.uid"},"color":"gold"}]