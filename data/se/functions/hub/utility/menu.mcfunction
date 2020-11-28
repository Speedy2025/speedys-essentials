tellraw @s ["",{"text":"\u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020","color":"blue","strikethrough":true},{"text":" [Your Hub] ","color":"green"},{"text":"\u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020","color":"blue","strikethrough":true}]
tellraw @s ["",{"text":"Coordinates: ","color":"gold"},{"nbt":"playerdb.player.data.se.hub.x","storage":"rx:io"},{"text":" "},{"nbt":"playerdb.player.data.se.hub.y","storage":"rx:io"},{"text":" "},{"nbt":"playerdb.player.data.se.hub.z","storage":"rx:io"},{"text":" ("},{"nbt":"playerdb.player.data.se.hub.rx","storage":"rx:io"},{"text":" "},{"nbt":"playerdb.player.data.se.hub.rz","storage":"rx:io"},{"text":") "},{"text":"[Set hub]","color":"blue","clickEvent":{"action":"run_command","value":"/trigger hub set -2"},"hoverEvent":{"action":"show_text","value":"Sets the hub to have your current coordinates and dimension id"}}]
tellraw @s ["",{"text":"Dimension ID: ","color":"gold"},{"nbt":"playerdb.player.data.se.hub.dim","storage":"rx:io"}]
execute if data storage rx:io playerdb.player.data.se.hub{locked:1b} run tellraw @s ["",{"text":"\nLocked: ","color":"gold"},{"text":"true ","color":"green"},{"text":"[<>]","color":"blue","clickEvent":{"action":"run_command","value":"/trigger hub set -3"},"hoverEvent":{"action":"show_text","value":"Toggle the lock status"}}]
execute if data storage rx:io playerdb.player.data.se.hub{locked:0b} run tellraw @s ["",{"text":"\nLocked: ","color":"gold"},{"text":"false ","color":"red"},{"text":"[<>]","color":"blue","clickEvent":{"action":"run_command","value":"/trigger hub set -3"},"hoverEvent":{"action":"show_text","value":"Toggle the lock status"}}]

execute if data storage rx:io playerdb.player.data.se.hub{whitelisted:1b} run tellraw @s ["",{"text":"Whitelisted: ","color":"gold"},{"text":"true ","color":"green"},{"text":"[<>]","color":"blue","clickEvent":{"action":"run_command","value":"/trigger hub set -4"},"hoverEvent":{"action":"show_text","value":"Toggle the whitelist status"}}]
execute if data storage rx:io playerdb.player.data.se.hub{whitelisted:0b} run tellraw @s ["",{"text":"Whitelisted: ","color":"gold"},{"text":"false ","color":"red"},{"text":"[<>]","color":"blue","clickEvent":{"action":"run_command","value":"/trigger hub set -4"},"hoverEvent":{"action":"show_text","value":"Toggle the whitelist status"}}]

tellraw @s ["",{"text":"\nWhitelisted Players: ","color":"gold"},{"nbt":"playerdb.player.data.se.hub.whitelist[]","storage":"rx:io"}]
tellraw @s ["",{"text":""},{"text":"[Add]","color":"blue","clickEvent":{"action":"run_command","value":"/trigger hub set -5"},"hoverEvent":{"action":"show_text","value":"Add uids to the whitelist"}},{"text":" "},{"text":"[Remove]","color":"blue","clickEvent":{"action":"run_command","value":"/trigger hub set -6"},"hoverEvent":{"action":"show_text","value":"Remove uids from the whitelist"}}]
tellraw @s ["",{"text":"\u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020","color":"blue","strikethrough":true},{"text":" [Your Hub] ","color":"green"},{"text":"\u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020","color":"blue","strikethrough":true}]