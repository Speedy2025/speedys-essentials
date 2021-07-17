# Ontime Saving
# - Called by se:update_ontime
# Context: Player

function rx.playerdb:api/get_self
execute store result storage rx:io playerdb.player.data.se.ontime int 1 run scoreboard players get @s tse_Ontime
function rx.playerdb:api/save_self