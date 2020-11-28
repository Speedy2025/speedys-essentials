function se:home/get_max
execute as @s[scores={home=1..}] run function se:home/teleport/root
execute as @s[scores={home=..-1}] run function se:home/set/root