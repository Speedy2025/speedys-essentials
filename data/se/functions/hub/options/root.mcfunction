# Root function of Hub Management
# - Called by se:main/tick
# Context: Player

function #rx.playerdb:api/v2/get/self
execute if score @s hub matches -1 run function se:hub/options/menu
execute if score @s hub matches -2 run function se:hub/options/set
execute if score @s hub matches -3 run function se:hub/options/lock
execute if score @s hub matches -4 run function se:hub/options/whitelist/toggle
execute if score @s hub matches -5 run function se:hub/options/whitelist/setadd
execute if score @s hub matches -6 run function se:hub/options/whitelist/setremove