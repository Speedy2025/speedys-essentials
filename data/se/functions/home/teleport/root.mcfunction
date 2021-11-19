# Root Home Teleport Function
# - Called by se:main/tick
# Context: Player

# Get & Validate Homes
function #rx.playerdb:api/v2/get/self
function se:home/cycler/root

# Display Bounding Error
execute if score #se.homes.result se.storage matches 1 run tellraw @s[tag=!se.mute.system] ["",{"text":"[Homes]","color":"green"},{"text":" You only have "},{"score":{"name":"#se.homes.max","objective":"se.storage"},"color":"gold"},{"text":" homes."}]

# Go to home
execute if score #se.homes.result se.storage matches 2 run function se:home/teleport/prepare_teleport

# Display Invalid Home Error
execute if score #se.homes.result se.storage matches 3 run tellraw @s[tag=!se.mute.system] ["",{"text":"[Homes]","color":"green"},{"text":" Home "},{"score":{"name":"@s","objective":"home"},"color":"gold"},{"text":" is not set."}]
