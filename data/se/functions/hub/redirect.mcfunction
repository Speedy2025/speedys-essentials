# Redirecting Function for Whitelisting
# - Called by se:main/tick
# Context: Player

execute unless entity @s[tag=se.whitelist.add] unless entity @s[tag=se.whitelist.remove] run function se:hub/teleport/root

execute if entity @s[tag=se.whitelist.add] if score @s hub = @s rx.uid run function se:hub/options/whitelist/deactivate
execute if entity @s[tag=se.whitelist.remove] if score @s hub = @s rx.uid run function se:hub/options/whitelist/deactivate

execute if entity @s[tag=se.whitelist.add] run function se:hub/options/whitelist/add
execute if entity @s[tag=se.whitelist.remove] run function se:hub/options/whitelist/remove