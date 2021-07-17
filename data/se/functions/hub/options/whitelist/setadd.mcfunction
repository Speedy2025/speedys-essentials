# Set Hub to Add mode
# - Called by se:hub/root
# Context: Player
tag @s add se.whitelist.add
tag @s remove se.whitelist.remove
tellraw @s[tag=!se.mute.system] ["",{"text":"[Hubs] ","color":"green"},{"text":"Adding users to the whitelist. Type "},{"text":"/trigger hub set #","color":"gold"},{"text":", replacing # with the desired uid, to add players. To stop, type "},{"text":"/trigger hub set ","color":"gold"},{"score":{"name":"@s","objective":"rx.uid"},"color":"gold"}]