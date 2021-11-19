function #rx.playerdb:api/v2/get/self
execute if entity @s[tag=se.hub.add] run function se:hub/utility/whitelist/add
execute if entity @s[tag=se.hub.remove] run function se:hub/utility/whitelist/remove
function #rx.playerdb:api/v2/save/self