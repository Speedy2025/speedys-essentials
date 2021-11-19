# Ontime Saving
# - Called by se:update_ontime
# Context: Player

function #rx.playerdb:api/v2/get/self
execute store result storage rx.playerdb:io player.data.se.ontime int 1 run scoreboard players get @s tse_Ontime
function #rx.playerdb:api/v2/save/self