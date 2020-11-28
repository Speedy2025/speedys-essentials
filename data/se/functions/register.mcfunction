function rx.playerdb:api/get_self
data modify storage rx:io playerdb.player.data set value {se:{homes:[],hub:{x:0,y:-5,z:0,dim:19,locked:0b,rx:0,rz:0,whitelisted:0b,whitelist:[0]},temphomes:[]}}
function rx.playerdb:api/save_self
tellraw @s [{"text":"[Speedy's Essentials] ","color":"green"},{"text":" You've been initialized! If you need help, remember to consult /trigger se_help!","color":"white"}]
tag @s add se.registered
function tser_main:messages/first_time