function #rx.playerdb:api/v2/get/self

execute if score @s hub matches -1 run function se:hub/utility/menu
execute if score @s hub matches -2 run function se:hub/utility/set
execute if score @s hub matches -3 run function se:hub/utility/toggle_lock
execute if score @s hub matches -4 run function se:hub/utility/toggle_whitelist

#The actual whitelist is handled through se:hub/utility/whitelist/add and se:hub/utility/whitelist/remove
#  Both of which are called through se:hub/utility/whitelist/isvalid based on tag and validity
#  I have moved these to a seperate function to save runtime resources.
execute if score @s hub matches -6..-5 run function se:hub/utility/whitelist/prepare_input
function #rx.playerdb:api/v2/save/self