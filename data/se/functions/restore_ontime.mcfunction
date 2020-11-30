#The player changed their name & their scoreboards got reset
#Sets their ontime to the last saved one
function rx.playerdb:api/get_self
execute if score @s rx.pdb.HasEntry matches 1 store result score @s tse_Ontime run data get storage rx:io playerdb.player.data.se.ontime