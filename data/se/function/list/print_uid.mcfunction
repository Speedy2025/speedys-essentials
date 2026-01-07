execute store result storage se:temp search.uid int 1 run scoreboard players get @s se.uid
execute as @a[tag=se.target,limit=1] run function se:list/print_name with storage se:temp search