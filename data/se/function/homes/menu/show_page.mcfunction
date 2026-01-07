tellraw @s ""
$execute if score @s home matches 2.. if score @s home < #se.pages se.maxHomes run tellraw @s ["",\
            {text:"[<<<]",click_event:{action:"run_command",command:"/trigger home set -$(PagePrev)"},hover_event:{action:"show_text",value:[{text:"Click to go to the previous page",color:"gray",italic:true}]},color:"dark_aqua"},\
            {text:"\u0020 \u0020 \u0020 \u0020 \u0020Page $(PageCurr)\u0020 \u0020 \u0020 \u0020 \u0020",color:"dark_aqua"},\
            {text:"[>>>]",click_event:{action:"run_command",command:"/trigger home set -$(PageNext)"},hover_event:{action:"show_text",value:[{text:"Click to go to the next page",color:"gray",italic:true}]},color:"dark_aqua"},\
            ]

$execute if score @s home matches 2.. if score @s home = #se.pages se.maxHomes run tellraw @s ["",\
            {text:"[<<<]",click_event:{action:"run_command",command:"/trigger home set -$(PagePrev)"},hover_event:{action:"show_text",value:[{text:"Click to go to the previous page",color:"gray",italic:true}]},color:"dark_aqua"},\
            {text:"\u0020 \u0020 \u0020 \u0020 \u0020Page $(PageCurr)\u0020 \u0020 \u0020 \u0020 \u0020",color:"dark_aqua"},\
            ]

$execute if score @s home matches 1 run tellraw @s ["",\
            {text:"\u0020 \u0020 \u0020\u0020 \u0020 \u0020 \u0020 \u0020Page $(PageCurr)\u0020 \u0020 \u0020 \u0020 \u0020",color:"dark_aqua"},\
            {text:"[>>>]",click_event:{action:"run_command",command:"/trigger home set -$(PageNext)"},hover_event:{action:"show_text",value:[{text:"Click to go to the next page",color:"gray",italic:true}]},color:"dark_aqua"},\
            ]