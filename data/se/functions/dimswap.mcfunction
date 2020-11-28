tag @s remove se.dimswap
execute as @s[scores={se.player=19}] in minecraft:overworld positioned as @s run tp @s ~ ~ ~
execute as @s[scores={se.player=20}] in minecraft:the_nether positioned as @s run tp @s ~ ~ ~
execute as @s[scores={se.player=17}] in minecraft:the_end positioned as @s run tp @s ~ ~ ~
function #se:dimswap
execute at @s run function se:rswap
execute as @s[scores={se.player=..16}] run tellraw @s ["",{"text":"[Speedy's Essentials] ","color":"green"},{"text":"Custom dimensions are not supported in this current edition."}]