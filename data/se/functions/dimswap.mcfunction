#I use a strange method to record dimensions
#  The dimension name length is stored as an integer in (se.player) and then compared to a list
# To extend, add your function to (#se:dimswap) using a similar format to below
execute as @s[scores={se.player=19}] in minecraft:overworld positioned as @s run tp @s ~ ~ ~
execute as @s[scores={se.player=20}] in minecraft:the_nether positioned as @s run tp @s ~ ~ ~
execute as @s[scores={se.player=17}] in minecraft:the_end positioned as @s run tp @s ~ ~ ~
function #se:dimswap