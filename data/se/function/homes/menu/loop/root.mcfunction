# Check if there's any data here, if not then report back nothing.

$execute store result score #se.home_count se.maxHomes run data get storage se:storage vals[{UUID: $(UUID)}].home_count
execute if score #se.home_count se.maxHomes matches ..0 run tellraw @s [""]
execute if score #se.home_count se.maxHomes matches ..0 run tellraw @s ["",{text:"You are homeless.",italic:true}]
execute if score #se.home_count se.maxHomes matches ..0 run tellraw @s [""]
execute if score #se.home_count se.maxHomes matches ..0 run return fail

# Calculate number of pages.
# We know it'll at least be 1. We create a bound: x0 to x9 is a page
# If you mess with per page, it'll still reflect the changes.

scoreboard players operation #se.pages se.maxHomes = #se.home_count se.maxHomes
scoreboard players remove #se.pages se.maxHomes 1
scoreboard players operation #se.pages se.maxHomes /= #se.per_page se.maxHomes
scoreboard players add #se.pages se.maxHomes 1

# Verify the user wants a page they have.
scoreboard players operation @s home *= #se.n1 se.maxHomes
execute if score @s home > #se.pages se.maxHomes run tellraw @s [""]
execute if score @s home > #se.pages se.maxHomes run tellraw @s ["",{text:"There are no homes on this page."}]
execute if score @s home > #se.pages se.maxHomes run tellraw @s [""]
execute if score @s home > #se.pages se.maxHomes run return fail

# Create the bounds
scoreboard players operation #se.pages_upper_bound se.maxHomes = @s home

scoreboard players operation #se.pages_lower_bound se.maxHomes = #se.pages_upper_bound se.maxHomes
scoreboard players remove #se.pages_lower_bound se.maxHomes 1

scoreboard players operation #se.pages_upper_bound se.maxHomes *= #se.per_page se.maxHomes
scoreboard players operation #se.pages_lower_bound se.maxHomes *= #se.per_page se.maxHomes

execute if score #se.pages_upper_bound se.maxHomes > #se.home_count se.maxHomes run scoreboard players operation #se.pages_upper_bound se.maxHomes = #se.home_count se.maxHomes
scoreboard players remove #se.pages_upper_bound se.maxHomes 1

#We've created the bounds - we're sure there are entries for each - now to actually handle it.
#Reuse se.pages_lower_bound as our iterator.
execute store result storage se:storage query.index int 1 run scoreboard players add #se.pages_lower_bound se.maxHomes 0
function se:homes/menu/loop/bonus_command with storage se:storage query