#Called from se:hub/utility/root to prepare the player to input
execute if score @s hub matches -5 run tag @s add se.hub.add
execute if score @s hub matches -6 run tag @s add se.hub.remove
tag @s add se.hub.input
tellraw @s ["",{"text":"[Hubs] ","color":"green"},{"text":"Enter the uid to add/remove using "},{"text":"/trigger hub set #","color":"gold"},{"text":". To stop entering uids, enter your own."}]