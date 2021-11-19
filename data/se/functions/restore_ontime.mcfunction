#The player changed their name & their scoreboards got reset
#Sets their ontime to the last saved one
execute if score @s rx.pdb.has_entry matches 1 store result score @s tse_Ontime run data get storage rx.playerdb:io player.data.se.ontime