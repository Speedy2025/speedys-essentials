scoreboard players operation $in.uid rx.pdb.io = @s ontime
function #rx.playerdb:api/v2/get

execute store result score #se.ontime.score se.storage run data get storage rx.playerdb:io player.data.se.ontime
execute if score #se.ontime.score se.storage matches -1..0 run tellraw @s[tag=!se.mute.system] ["",{"text":"[Ontime] ","color":"green"},{"text":"That uid does not exist."}]