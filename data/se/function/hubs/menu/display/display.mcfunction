$tellraw @s ["",{text:"\u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 ",color:"blue",strikethrough:true},\
               {text:" [",color:"green"},{nbt:"vals[{UUID: $(UUID)}].hub.name",interpret:true,storage:"se:storage",color:"green"},{text:"] ",color:"green"},\
               {text:" \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020",color:"blue",strikethrough:true}\
            ]

$execute store result score #se.pos.y se.maxHomes run data get storage se:storage vals[{UUID:$(UUID)}].hub.Pos[1] 1
$execute store result score #se.pos.x se.maxHomes run data get storage se:storage vals[{UUID:$(UUID)}].hub.Pos[0] 1
$execute store result score #se.pos.z se.maxHomes run data get storage se:storage vals[{UUID:$(UUID)}].hub.Pos[2] 1


$tellraw @s ["",{text:"Coords: ",color:"gold"},\
                        {score:{name:"#se.pos.x",objective:"se.maxHomes"},hover_event:{action:"show_text",value:["",{text:"Click to set your hub.",color:"gray",italic:true}]},click_event:{action:"run_command",command:"/trigger hub set -2"}},\
                        {text:" ",hover_event:{action:"show_text",value:["",{text:"Click to set your hub.",color:"gray",italic:true}]},click_event:{action:"run_command",command:"/trigger hub set -2"}},\
                        {score:{name:"#se.pos.y",objective:"se.maxHomes"},hover_event:{action:"show_text",value:["",{text:"Click to set your hub.",color:"gray",italic:true}]},click_event:{action:"run_command",command:"/trigger hub set -2"}},\
                        {text:" ",hover_event:{action:"show_text",value:["",{text:"Click to set your hub.",color:"gray",italic:true}]},click_event:{action:"run_command",command:"/trigger hub set -2"}},\
                        {score:{name:"#se.pos.z",objective:"se.maxHomes"},hover_event:{action:"show_text",value:["",{text:"Click to set your hub.",color:"gray",italic:true}]},click_event:{action:"run_command",command:"/trigger hub set -2"}},\
                        {text:" ",hover_event:{action:"show_text",value:["",{text:"Click to set your hub.",color:"gray",italic:true}]},click_event:{action:"run_command",command:"/trigger hub set -2"}},\
                        "\n",\
                        {text:"Dimension: ",color:"gold"},\
                        {storage:"se:storage",nbt:"vals[{UUID: $(UUID)}].hub.dimension",hover_event:{action:"show_text",value:["",{text:"Click to set your hub.",color:"gray",italic:true}]},click_event:{action:"run_command",command:"/trigger hub set -2"}}]

$execute if data storage se:storage vals[{UUID: $(UUID)}].hub{status:0} run tellraw @s \
    [\
    "\n",\
    {text:"Lock: ",color:"gold"},{text:"Disabled",color:"red",\
        hover_event:{action:"show_text",value:\
            [\
                "",\
                {text:"Lock Type: ",color:"gold",bold:true},{text:"Disabled",color:"red",bold:true},\
                "\n",\
                {text:"Locking your hub controls who can use it.\n\n"},\
                {text:"Disabled",color:"red"},\
                {text:" - Everybody can use\n"},\
                {text:"Whitelist",color:"gold"},\
                {text:" - Only ones listed\n"},\
                {text:"Blacklist",color:"gold"},\
                {text:" - Everyone except listed\n"},\
                "\n",\
                {text:"Click to cycle",color:"gray",italic:true}\
            ]\
        },\
        click_event:{action:"run_command",command:"/trigger hub set -3"}\
    }\
    ]

$execute if data storage se:storage vals[{UUID: $(UUID)}].hub{status:1} run tellraw @s \
    [\
    "\n",\
    {text:"Lock: ",color:"gold"},{text:"Whitelisted",color:"green",\
        hover_event:{action:"show_text",value:\
            [\
                "",\
                {text:"Lock Type: ",color:"gold",bold:true},{text:"Whitelisted",color:"green",bold:true},\
                "\n",\
                {text:"Locking your hub controls who can use it.\n\n"},\
                {text:"Disabled",color:"gold"},\
                {text:" - Everybody can use\n"},\
                {text:"Whitelist",color:"green"},\
                {text:" - Only ones listed\n"},\
                {text:"Blacklist",color:"gold"},\
                {text:" - Everyone except listed\n"},\
                "\n",\
                {text:"Click to cycle",color:"gray",italic:true}\
            ]\
        },\
        click_event:{action:"run_command",command:"/trigger hub set -3"}\
    }\
    ]

$execute if data storage se:storage vals[{UUID: $(UUID)}].hub{status:2} run tellraw @s \
    [\
    "\n",\
    {text:"Lock: ",color:"gold"},{text:"Blacklisted",color:"dark_green",\
        hover_event:{action:"show_text",value:\
            [\
                "",\
                {text:"Lock Type: ",color:"gold",bold:true},{text:"Blacklisted",color:"dark_green",bold:true},\
                "\n",\
                {text:"Locking your hub controls who can use it.\n\n"},\
                {text:"Disabled",color:"gold"},\
                {text:" - Everybody can use\n"},\
                {text:"Whitelist",color:"gold"},\
                {text:" - Only ones listed\n"},\
                {text:"Blacklist",color:"dark_green"},\
                {text:" - Everyone except listed\n"},\
                "\n",\
                {text:"Click to cycle",color:"gray",italic:true}\
            ]\
        },\
        click_event:{action:"run_command",command:"/trigger hub set -3"}\
    }\
    ]

tellraw @s ["\n",{text:"List:",color:"gold"}]
$execute if data storage se:storage vals[{UUID: $(UUID)}].hub{status:0} run tellraw @s ["",{text:"  [Modify List]",color:"dark_aqua",click_event:{action:"run_command",command:"/trigger hub set -4"},hover_event:{action:"show_text",value:["",{text:"The list is ignored as the lock is set to "},{text:"disabled",color:"red"},".",{text:"\n\nClick to modify the list anyway",color:"gray",italic:true}]}}]
$execute if data storage se:storage vals[{UUID: $(UUID)}].hub{status:0} run tellraw @s ["",{text:"  [Display List]",color:"dark_aqua",click_event:{action:"run_command",command:"/trigger hub set -5"},hover_event:{action:"show_text",value:["",{text:"The list is ignored as the lock is set to "},{text:"disabled",color:"red"},".",{text:"\n\nClick to show everybody in the list anyway",color:"gray",italic:true}]}}]

$execute if data storage se:storage vals[{UUID: $(UUID)}].hub{status:1} run tellraw @s ["",{text:"  [Modify List]",color:"dark_aqua",click_event:{action:"run_command",command:"/trigger hub set -4"},hover_event:{action:"show_text",value:["",{text:"Modify the list of players allowed to go to your hub. "},{text:"\n\nClick to modify the list",color:"gray",italic:true}]}}]
$execute if data storage se:storage vals[{UUID: $(UUID)}].hub{status:1} run tellraw @s ["",{text:"  [Display List]",color:"dark_aqua",click_event:{action:"run_command",command:"/trigger hub set -5"},hover_event:{action:"show_text",value:["",{text:"List the players allowed to go to your hub."},{text:"\n\nClick to show everybody in the list",color:"gray",italic:true}]}}]

$execute if data storage se:storage vals[{UUID: $(UUID)}].hub{status:2} run tellraw @s ["",{text:"  [Modify List]",color:"dark_aqua",click_event:{action:"run_command",command:"/trigger hub set -4"},hover_event:{action:"show_text",value:["",{text:"Modify the list of players prohibited from using your hub. "},{text:"\n\nClick to modify the list",color:"gray",italic:true}]}}]
$execute if data storage se:storage vals[{UUID: $(UUID)}].hub{status:2} run tellraw @s ["",{text:"  [Display List]",color:"dark_aqua",click_event:{action:"run_command",command:"/trigger hub set -5"},hover_event:{action:"show_text",value:["",{text:"List the players prohibbited from using your hub."},{text:"\n\nClick to show everybody in the list",color:"gray",italic:true}]}}]

$tellraw @s ["",{text:"\u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 ",color:"blue",strikethrough:true},\
               {text:" [",color:"green"},{nbt:"vals[{UUID: $(UUID)}].hub.name",interpret:true,storage:"se:storage",color:"green"},{text:"] ",color:"green"},\
               {text:" \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020",color:"blue",strikethrough:true}\
            ]