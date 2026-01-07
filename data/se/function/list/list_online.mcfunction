###############
# List Online #
###############

# Print the header.
tellraw @s ["",{text:"\u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020",color:"blue",strikethrough:true},{text:" [List] ",color:"green"},{text:"\u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020",color:"blue",strikethrough:true}]

# Make everyone say their own UID
tag @s add se.target
execute as @a run function se:list/print_uid
tag @s remove se.target

# Print the footer.
tellraw @s ["",{text:"\u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020",color:"blue",strikethrough:true},{text:" [List] ",color:"green"},{text:"\u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020",color:"blue",strikethrough:true}]
