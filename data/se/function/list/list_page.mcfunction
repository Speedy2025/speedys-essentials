################
# List by Page #
################

# Invert Score and subtract 1
scoreboard players operation @s list *= #se.n1 se.maxHomes

# This is the page number.
# Print the header.
tellraw @s ["",{text:"\u0020 \u0020 \u0020 \u0020 \u0020 \u0020",color:"blue",strikethrough:true},{text:" [List, Page ",color:"green"},{score:{name:"@s",objective:"list"},color:"green"},{text:"] ",color:"green"},{text:"\u0020 \u0020 \u0020 \u0020 \u0020 \u0020",color:"blue",strikethrough:true}]


# We then subtract one, multiply the value by 10, and add one to get the start.
# (1-1) * 10 + 1 = 1, the start of page 1.
# (2-1) * 10 + 1 = 11, the start of page 2.
scoreboard players remove @s list 1
scoreboard players operation @s list *= #se.const.10 se.maxHomes
scoreboard players add @s list 1


# Now, print each entry by page.
#     General workflow is to store the target UID, then show the target player with print_name, and then increment.

# 1, 11, 21, ...
execute store result storage se:temp search.uid int 1 run scoreboard players get @s list
function se:list/print_name with storage se:temp search
scoreboard players add @s list 1

# 2, 12, 22, ...
execute store result storage se:temp search.uid int 1 run scoreboard players get @s list
function se:list/print_name with storage se:temp search
scoreboard players add @s list 1

# 3, 13, 23, ...
execute store result storage se:temp search.uid int 1 run scoreboard players get @s list
function se:list/print_name with storage se:temp search
scoreboard players add @s list 1

# 4, 14, 24, ...
execute store result storage se:temp search.uid int 1 run scoreboard players get @s list
function se:list/print_name with storage se:temp search
scoreboard players add @s list 1

# 5, 15, 25, ...
execute store result storage se:temp search.uid int 1 run scoreboard players get @s list
function se:list/print_name with storage se:temp search
scoreboard players add @s list 1

# 6, 16, 26, ...
execute store result storage se:temp search.uid int 1 run scoreboard players get @s list
function se:list/print_name with storage se:temp search
scoreboard players add @s list 1

# 7, 17, 27, ...
execute store result storage se:temp search.uid int 1 run scoreboard players get @s list
function se:list/print_name with storage se:temp search
scoreboard players add @s list 1

# 8, 18, 28, ...
execute store result storage se:temp search.uid int 1 run scoreboard players get @s list
function se:list/print_name with storage se:temp search
scoreboard players add @s list 1

# 9, 19, 29, ...
execute store result storage se:temp search.uid int 1 run scoreboard players get @s list
function se:list/print_name with storage se:temp search
scoreboard players add @s list 1

# 10, 20, 30, ...
execute store result storage se:temp search.uid int 1 run scoreboard players get @s list
function se:list/print_name with storage se:temp search
scoreboard players add @s list 1

# Reset the player's score so it can't be rerun.
scoreboard players reset @s list