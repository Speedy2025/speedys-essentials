# Display of successful home set
# - Called by se:home/root
# Context: Successful Player

#Code from elsewhere

# <X>
execute store result score #se.hub.output.x1 se.storage run data get storage rx.playerdb:io player.data.se.hub.x 100.00
execute store result score #se.hub.output.x2 se.storage run data get storage rx.playerdb:io player.data.se.hub.x 1
scoreboard players operation #se.hub.output.x3 se.storage = #se.hub.output.x2 se.storage
scoreboard players operation #se.hub.output.x3 se.storage *= #se.const.100 se.storage
scoreboard players operation #se.hub.output.x1 se.storage -= #se.hub.output.x3 se.storage

# <Y>
execute store result score #se.hub.output.y1 se.storage run data get storage rx.playerdb:io player.data.se.hub.y 100
execute store result score #se.hub.output.y2 se.storage run data get storage rx.playerdb:io player.data.se.hub.y 1
scoreboard players operation #se.hub.output.y3 se.storage = #se.hub.output.y2 se.storage
scoreboard players operation #se.hub.output.y3 se.storage *= #se.const.100 se.storage
scoreboard players operation #se.hub.output.y1 se.storage -= #se.hub.output.y3 se.storage

# <Z>
execute store result score #se.hub.output.z1 se.storage run data get storage rx.playerdb:io player.data.se.hub.z 100
execute store result score #se.hub.output.z2 se.storage run data get storage rx.playerdb:io player.data.se.hub.z 1
scoreboard players operation #se.hub.output.z3 se.storage = #se.hub.output.z2 se.storage
scoreboard players operation #se.hub.output.z3 se.storage *= #se.const.100 se.storage
scoreboard players operation #se.hub.output.z1 se.storage -= #se.hub.output.z3 se.storage


#Header
execute unless data storage rx.playerdb:io player.data.se.hub.name run tellraw @s ["",{"text":"\u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020","color":"blue","strikethrough":true},{"text":" [Your Hub] ","color":"green"},{"text":"\u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020","color":"blue","strikethrough":true}]
execute if data storage rx.playerdb:io player.data.se.hub.name run tellraw @s ["",{"text":"\u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 ","color":"blue","strikethrough":true},{"text":" [","color":"green"},{"nbt":"player.data.se.hub.name","interpret":true,"storage":"rx.playerdb:io","color":"green"},{"text":"] ","color":"green"},{"text":" \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020","color":"blue","strikethrough":true}]

#Coords & DIM id
tellraw @s ["",{"text":"Coordinates: ","color":"gold","hoverEvent":{"action":"show_text","contents":["",{"text":"Your Hub's Coordinates","color":"gold"},{"text":"\nYou can set your hub to your current location using the "},{"text":"[Set hub]","color":"dark_aqua"},{"text":" button to the right."}]}},{"score":{"name":"#se.hub.output.x2","objective":"se.storage"}},{"text":"."},{"score":{"name":"#se.hub.output.x1","objective":"se.storage"}},{"text":" "},{"score":{"name":"#se.hub.output.y2","objective":"se.storage"}},{"text":"."},{"score":{"name":"#se.hub.output.y1","objective":"se.storage"}},{"text":" "},{"score":{"name":"#se.hub.output.z2","objective":"se.storage"}},{"text":"."},{"score":{"name":"#se.hub.output.z1","objective":"se.storage"}},{"text":" [Set hub]","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/trigger hub set -2"},"hoverEvent":{"action":"show_text","value":"Sets the hub to have your current coordinates and dimension id"}}]
tellraw @s ["",{"text":"Dimension ID: ","color":"gold","hoverEvent":{"action":"show_text","contents":["",{"text":"Your Hub's Dimension ID","color":"gold"},{"text":"\nYou can set your hub to your current location using the "},{"text":"[Set hub]","color":"dark_aqua"},{"text":" button just above and to the right."}]}},{"nbt":"player.data.se.hub.dimName","storage":"rx.playerdb:io"}]

#Lock
execute if data storage rx.playerdb:io player.data.se.hub{locked:1b} run tellraw @s ["",{"text":"\nLocked: ","color":"gold","hoverEvent":{"action":"show_text","contents":["",{"text":"Hub Lock","color":"gold"},{"text":"\nControls if others can go to your hub.\n"},{"text":"\ntrue ","color":"green"},{"text":"- Players can't go to your hub."},{"text":"\nfalse ","color":"red"},{"text":"- Players can go to your hub"},{"text":"\n *Defaults to "},{"text":"false ","color":"red"},{"text":"\n\nYou can toggle the lock by pressing "},{"text":"[<|>]","color":"dark_aqua"},{"text":" to the right"}]}},{"text":"true ","color":"green"},{"text":"[<|>]","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/trigger hub set -3"},"hoverEvent":{"action":"show_text","value":"Toggle the lock status"}}]
execute if data storage rx.playerdb:io player.data.se.hub{locked:0b} run tellraw @s ["",{"text":"\nLocked: ","color":"gold","hoverEvent":{"action":"show_text","contents":["",{"text":"Hub Lock","color":"gold"},{"text":"\nControls if others can go to your hub.\n"},{"text":"\ntrue ","color":"green"},{"text":"- Players can't go to your hub."},{"text":"\nfalse ","color":"red"},{"text":"- Players can go to your hub"},{"text":"\n *Defaults to "},{"text":"false ","color":"red"},{"text":"\n\nYou can toggle the lock by pressing "},{"text":"[<|>]","color":"dark_aqua"},{"text":" to the right"}]}},{"text":"false ","color":"red"},{"text":"[<|>]","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/trigger hub set -3"},"hoverEvent":{"action":"show_text","value":"Toggle the lock status"}}]

#Whitelist
execute if data storage rx.playerdb:io player.data.se.hub{whitelisted:1b} run tellraw @s ["",{"text":"Whitelisted: ","color":"gold","hoverEvent":{"action":"show_text","contents":["",{"text":"Hub Whitelist","color":"gold"},{"text":"\nControls if certain users can bypass your hub's lock.\n"},{"text":"\ntrue ","color":"green"},{"text":"- Allow whitelisted players in"},{"text":"\nfalse ","color":"red"},{"text":"- Don't allow whitelisted players in"},{"text":"\n *Defaults to "},{"text":"false ","color":"red"},{"text":"\n\nYou can toggle the whitelist by pressing "},{"text":"[<|>]","color":"dark_aqua"},{"text":" to the right"}]}},{"text":"true ","color":"green"},{"text":"[<|>]","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/trigger hub set -4"},"hoverEvent":{"action":"show_text","value":"Toggle the whitelist status"}}]
execute if data storage rx.playerdb:io player.data.se.hub{whitelisted:0b} run tellraw @s ["",{"text":"Whitelisted: ","color":"gold","hoverEvent":{"action":"show_text","contents":["",{"text":"Hub Whitelist","color":"gold"},{"text":"\nControls if certain users can bypass your hub's lock.\n"},{"text":"\ntrue ","color":"green"},{"text":"- Allow whitelisted players in"},{"text":"\nfalse ","color":"red"},{"text":"- Don't allow whitelisted players in"},{"text":"\n *Defaults to "},{"text":"false ","color":"red"},{"text":"\n\nYou can toggle the whitelist by pressing "},{"text":"[<|>]","color":"dark_aqua"},{"text":" to the right"}]}},{"text":"false ","color":"red"},{"text":"[<|>]","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/trigger hub set -4"},"hoverEvent":{"action":"show_text","value":"Toggle the whitelist status"}}]
#Whitelist Management
tellraw @s ["",{"text":"\nWhitelisted Players: ","color":"gold","hoverEvent":{"action":"show_text","contents":["",{"text":"The Whitelist","color":"gold"},{"text":"\nThe list of users who can, when the whitelist is enabled, bypass your hub's lock."},{"text":"\n\nYou can add or remove players from the whitelist by pressing "},{"text":"[Add]","color":"dark_aqua"},{"text":" or "},{"text":"[Remove]","color":"dark_aqua"},{"text":" just below."}]}},{"nbt":"player.data.se.hub.whitelist[]","storage":"rx.playerdb:io"}]
tellraw @s ["",{"text":""},{"text":"[Add]","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/trigger hub set -5"},"hoverEvent":{"action":"show_text","value":"Add uids to the whitelist"}},{"text":" "},{"text":"[Remove]","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/trigger hub set -6"},"hoverEvent":{"action":"show_text","value":"Remove uids from the whitelist"}}]

#Footer
execute unless data storage rx.playerdb:io player.data.se.hub.name run tellraw @s ["",{"text":"\u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020","color":"blue","strikethrough":true},{"text":" [Your Hub] ","color":"green"},{"text":"\u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020","color":"blue","strikethrough":true}]
execute if data storage rx.playerdb:io player.data.se.hub.name run tellraw @s ["",{"text":"\u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 ","color":"blue","strikethrough":true},{"text":" [","color":"green"},{"nbt":"player.data.se.hub.name","interpret":true,"storage":"rx.playerdb:io","color":"green"},{"text":"] ","color":"green"},{"text":" \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020","color":"blue","strikethrough":true}]
