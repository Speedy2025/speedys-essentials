
execute as @s[tag=se.hub.input] run function se:hub/utility/whitelist/check_valid
execute as @s[tag=!se.hub.input] run function se:hub/teleport/root

execute if score @s rx.uid = @s hub run tag @s remove se.hub.input