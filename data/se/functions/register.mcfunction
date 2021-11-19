function #rx.playerdb:api/v2/get/self
data modify storage rx.playerdb:io player.data.se set value {homes:[],hub:{x:0,y:-5,z:0,dim:19,locked:0b,rx:0,rz:0,whitelisted:0b,whitelist:[0]},temphomes:[]}
function #rx.playerdb:api/v2/save/self
tellraw @s [{"text":"[Speedy's Essentials] ","color":"green"},{"text":" You've been initialized! If you need help, remember to consult /trigger se_help!","color":"white"}]
tag @s add se.registered
tag @s remove se.registered.tmp
function tser_main:messages/first_time