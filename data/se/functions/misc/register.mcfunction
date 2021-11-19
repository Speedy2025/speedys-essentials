# Register & Setup Newcomers
# - Executes if a player is found without the tag se.registered
# Context: Player w/o se.registered

#> Configure storage
function #rx.playerdb:api/v2/get/self
data modify storage rx.playerdb:io player.data.se set value {homes:[],hub:{version:3,x:0.0d,y:-5.0d,z:0.0d,dim:0,locked:0b,rx:0.0f,rz:0.0f,whitelisted:0b,whitelist:[]},temphomes:[]}
function #rx.playerdb:api/v2/save/self

#> Report successful registration & apply tag
tellraw @s [{"text":"[Speedy's Essentials] ","color":"green"},{"text":" You've been initialized! If you need help, remember to consult /trigger se_help!","color":"white"}]
tag @s add se.registered

#] @Speedy2025#2025