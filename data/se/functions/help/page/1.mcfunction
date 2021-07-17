function rx.playerdb:api/get_self
function se:utility/get/full_ontime
function se:home/misc/max_homes

tellraw @s ["",{"text":"\u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020","color":"blue","strikethrough":true},{"text":" [Speedy's Essentials] ","color":"green"},{"text":"\u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020","color":"blue","strikethrough":true}]

tellraw @s ["",{"text":"Your UID: ","color":"gold"},{"score":{"name":"@s","objective":"rx.uid"}},{"text":" "},{"text":"Max Homes: ","color":"gold"},{"score":{"name":"#se.homes.max","objective":"se.storage"}}]
tellraw @s ["",{"text":"Total Ontime: ","color":"gold"},{"score":{"name":"@s","objective":"tse_OntimeDays"}},{"text":"d "},{"score":{"name":"@s","objective":"tse_OntimeHours"}},{"text":"h "},{"score":{"name":"@s","objective":"tse_OntimeMinute"}},{"text":"m "},{"score":{"name":"@s","objective":"tse_OntimeSecond"}},{"text":"s"}]

tellraw @s ["",{"text":"[List All UIDs]","hoverEvent":{"action":"show_text","value":[{"text":"Click to list all player UIDs"}]},"clickEvent":{"action":"run_command","value":"/trigger rx.pbd.Lt"},"color":"green"}]

tellraw @s ["",{"text":"Hover over a command to learn more"}]


tellraw @s ["- ",{"text":"/trigger se_help set #","color":"gold","hoverEvent":{"action":"show_text","value":["",{"text":"/trigger se_help set #","color":"green"},{"text":"\nThe help menu for Speedy's Essentials","italic":true},{"text":"\n\nPositive Values","color":"gold","italic":true},{"text":" - Opens that help page"},{"text":"\n1","color":"gold","italic":true},{"text":" - Opens the help menu"}]}}]
tellraw @s ["- ",{"text":"/trigger home set #","color":"gold","hoverEvent":{"action":"show_text","value":["",{"text":"/trigger home set #","color":"green"},{"text":"\nTeleport to or view your homes","italic":true},{"text":"\n\nPositive Values","color":"gold","italic":true},{"text":" - Teleport to home #"},{"text":"\nNegative Values","color":"gold","italic":true},{"text":" - Shows page # of your homes"},{"text":"\n\nExamples:","color":"gold"},{"text":"\n/trigger home set 4","color":"gray"},{"text":" - Go to home 4"},{"text":"\n/trigger home set -1","color":"gray"},{"text":" - View home page 1"}]}}]
tellraw @s ["- ",{"text":"/trigger sethome set #","color":"gold","hoverEvent":{"action":"show_text","value":["",{"text":"/trigger sethome set #","color":"green"},{"text":"\nSet or delete your homes."},{"color":"gray","text":"\nYou can rename a home by holding a named nametag in your offhand while setting","italic":true},{"text":"\n\nPositive Values","color":"gold","italic":true},{"text":" - Set home #"},{"text":"\nNegative Values","color":"gold","italic":true},{"text":" - Delete home #"},{"text":"\n\nExamples:","color":"gold"},{"text":"\n/trigger sethome set 2","color":"gray"},{"text":" - Set home 2"},{"text":"\n/trigger sethome set -5","color":"gray"},{"text":" - Delete home 5"}]}}]

tellraw @s ["- ",{"text":"/trigger hub set #","color":"gold","hoverEvent":{"action":"show_text","value":["",{"text":"/trigger hub set #","color":"green"},{"text":"\nTeleport to hubs or configure your own"},{"color":"gray","text":"\nYou can rename your hub by holding a named nametag in your offhand while setting","italic":true},{"text":"\n\nPositive Values","color":"gold","italic":true},{"text":" - Teleport to hub #"},{"text":"\n-1","color":"gold","italic":true},{"text":" - Open the Hub Management Menu"},{"text":"\n\nExamples:","color":"gold"},{"text":"\n/trigger hub set 3","color":"gray"},{"text":" - Travel to hub 3"},{"text":"\n/trigger hub set -1","color":"gray"},{"text":" - Open the Hub Management Menu"}]}}]

tellraw @s ["- ",{"text":"/trigger tpr set #","color":"gold","hoverEvent":{"action":"show_text","value":["",{"text":"/trigger tpr set #","color":"green"},{"text":"\nTeleport to players or let them teleport to you"},{"text":"\n\nPositive Values","color":"gold","italic":true},{"text":" - Send a teleport request to #"},{"text":"\nNegative Values","color":"gold","italic":true},{"text":" - Accept a request from #"},{"text":"\n"},{"score":{"name":"@s","objective":"rx.uid"},"color":"gold","italic":true},{"text":" - Cancel your request"},{"text":"\n-","color":"gold","italic":true},{"score":{"name":"@s","objective":"rx.uid"},"color":"gold","italic":true},{"text":" - Deny inbound requests"},{"text":"\n\nExamples:","color":"gold"},{"text":"\n/trigger tpr set 2","color":"gray"},{"text":" - Send a request to player with uid 2, unless your UID is 2"},{"text":"\n/trigger hub set -5","color":"gray"},{"text":" - Accept player with uid 5's request, unless your UID is 5"}]}}]
tellraw @s ["- ",{"text":"/trigger ontime set #","color":"gold","hoverEvent":{"action":"show_text","value":["",{"text":"/trigger ontime set #","color":"green"},{"text":"\nLookup player ontimes"},{"text":"\n\nPositive Values","color":"gold","italic":true},{"text":" - Show uid #'s ontime"},{"text":"\n\nExamples:","color":"gold"},{"text":"\n/trigger ontime set 1","color":"gray"},{"text":" - View uid 1's ontime"}]}}]

#tellraw @a ["",{"text":"/trigger se_help set #","color":"green"},{"text":"\nThe help menu for Speedy's Essentials","italic":true},{"text":"\n\n1","color":"gold","italic":true},{"text":" - Opens the help menu"},{"text":"\nPositive Values","color":"gold","italic":true},{"text":" - Opens that help page (Legacy)"}]




#tellraw @s ["",{"text":"Page 1","color":"gold","clickEvent":{"action":"run_command","value":"/trigger se_help set 1"}},{"text":" - Opens this page"}]
#tellraw @s ["",{"text":"Page 2","color":"gold","clickEvent":{"action":"run_command","value":"/trigger se_help set 2"}},{"text":" - See all uids"}]
#tellraw @s ["",{"text":"Page 3","color":"gold","clickEvent":{"action":"run_command","value":"/trigger se_help set 3"}},{"text":" - Teleporting to and viewing homes"}]
#tellraw @s ["",{"text":"Page 4","color":"gold","clickEvent":{"action":"run_command","value":"/trigger se_help set 4"}},{"text":" - Setting and deleting homes"}]
#tellraw @s ["",{"text":"Page 5","color":"gold","clickEvent":{"action":"run_command","value":"/trigger se_help set 5"}},{"text":" - Hubs"}]
#tellraw @s ["",{"text":"Page 6","color":"gold","clickEvent":{"action":"run_command","value":"/trigger se_help set 6"}},{"text":" - TPr"}]
#tellraw @s ["",{"text":"Page 7","color":"gold","clickEvent":{"action":"run_command","value":"/trigger se_help set 7"}},{"text":" - Ontime"}]
#tellraw @s ["",{"text":"\u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020","color":"blue","strikethrough":true},{"text":" [Speedy's Essentials] ","color":"green"},{"text":"\u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020","color":"blue","strikethrough":true}]