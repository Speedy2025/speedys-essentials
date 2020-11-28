# I have 3 lines to play with, so I have 2 effective ones
function rx.playerdb:api/get_self
function se:home/get_max
tellraw @s ["",{"text":"\u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020","color":"blue","strikethrough":true},{"text":" [Speedy's Essentials] ","color":"green"},{"text":"\u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020","color":"blue","strikethrough":true}]
tellraw @s ["",{"text":"Hello, "},{"storage":"rx:io","nbt":"playerdb.player.info.name","color":"gold"},{"text":"!"}]
tellraw @s ["",{"text":"Your UID: ","color":"gold"},{"score":{"name":"@s","objective":"rx.uid"}},{"text":" "},{"text":"Max Homes: ","color":"gold"},{"score":{"name":"@s","objective":"se.player"}}]
function se:utility/get/full_ontime
tellraw @s ["",{"text":"Total Ontime: ","color":"gold"},{"score":{"name":"@s","objective":"tse_OntimeDays"}},{"text":"d "},{"score":{"name":"@s","objective":"tse_OntimeHours"}},{"text":"h "},{"score":{"name":"@s","objective":"tse_OntimeMinute"}},{"text":"m "},{"score":{"name":"@s","objective":"tse_OntimeSecond"}},{"text":"s"}]
tellraw @s ["",{"text":"Page 1","color":"gold","clickEvent":{"action":"run_command","value":"/trigger se_help set 1"}},{"text":" - Opens this page"}]
tellraw @s ["",{"text":"Page 2","color":"gold","clickEvent":{"action":"run_command","value":"/trigger se_help set 2"}},{"text":" - See all uids"}]
tellraw @s ["",{"text":"Page 3","color":"gold","clickEvent":{"action":"run_command","value":"/trigger se_help set 3"}},{"text":" - Homes"}]
tellraw @s ["",{"text":"Page 4","color":"gold","clickEvent":{"action":"run_command","value":"/trigger se_help set 4"}},{"text":" - Hubs"}]
tellraw @s ["",{"text":"Page 5","color":"gold","clickEvent":{"action":"run_command","value":"/trigger se_help set 5"}},{"text":" - TPr"}]
tellraw @s ["",{"text":"\u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020","color":"blue","strikethrough":true},{"text":" [Speedy's Essentials] ","color":"green"},{"text":"\u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020","color":"blue","strikethrough":true}]