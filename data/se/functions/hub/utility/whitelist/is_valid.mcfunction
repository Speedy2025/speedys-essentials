function rx.playerdb:api/get_self
execute if entity @s[tag=se.hub.add] run function se:hub/utility/whitelist/add
execute if entity @s[tag=se.hub.remove] run function se:hub/utility/whitelist/remove
function rx.playerdb:api/save_self