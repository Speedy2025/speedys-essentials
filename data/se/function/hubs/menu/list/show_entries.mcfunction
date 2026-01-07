
$data modify storage se:storage temp.list set from storage se:storage vals[{UUID: $(UUID)}].hub.list
execute unless data storage se:storage temp.list[] run tellraw @s ["",{text:"[Hub]",color:"green"},{text:" There are no entries in the list."}]
execute unless data storage se:storage temp.list[] run data remove storage se:storage temp
execute unless data storage se:storage temp.list[] run return fail

tellraw @s ["",{text:"\u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 ",color:"blue",strikethrough:true},\
               {text:" [List Entries] ",color:"green"},\
               {text:" \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020",color:"blue",strikethrough:true}\
            ]

function se:hubs/menu/list/entry_iterator
data remove storage se:storage temp

tellraw @s ["",{text:"\u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 ",color:"blue",strikethrough:true},\
               {text:" [List Entries] ",color:"green"},\
               {text:" \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020",color:"blue",strikethrough:true}\
            ]