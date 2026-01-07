$execute store result score #se.pos.x se.maxHomes run data get storage se:storage vals[{UUID:$(UUID)}].homes[$(index)].Pos[0] 1
$execute store result score #se.pos.y se.maxHomes run data get storage se:storage vals[{UUID:$(UUID)}].homes[$(index)].Pos[1] 1
$execute store result score #se.pos.z se.maxHomes run data get storage se:storage vals[{UUID:$(UUID)}].homes[$(index)].Pos[2] 1

$execute unless data storage se:storage vals[{UUID:$(UUID)}].homes[$(index)].description run tellraw @s ["", \
                {text:"[x]",color:"red",click_event:{action:"run_command",command:"/trigger sethome set -$(val)"},\
                                        hover_event:{action:"show_text",value:["",{text:"Click to remove",color:"gray",italic:true}]}},\
                " ",\
                {\
                    storage:"se:storage",nbt:"vals[{UUID: $(UUID)}].homes[$(index)].name",color:"gold",\
                    click_event:{action:"run_command",command:"/trigger home set $(val)"},\
                    hover_event:{action:"show_text",value:[\
                        "",\
                        {storage:"se:storage",nbt:"vals[{UUID: $(UUID)}].homes[$(index)].name",color:"green",bold:true},\
                        "\n",\
                        {text:"id: ",color:"gold"},\
                        {storage:"se:storage",nbt:"vals[{UUID: $(UUID)}].homes[$(index)].id"},\
                        "\n",\
                        {text:"Coords: ",color:"gold"},\
                        {score:{name:"#se.pos.x",objective:"se.maxHomes"}},\
                        {text:" "},\
                        {score:{name:"#se.pos.y",objective:"se.maxHomes"}},\
                        {text:" "},\
                        {score:{name:"#se.pos.z",objective:"se.maxHomes"}},\
                        {text:" "},\
                        "\n",\
                        {text:"Dimension: ",color:"gold"},\
                        {storage:"se:storage",nbt:"vals[{UUID: $(UUID)}].homes[$(index)].dimension"},\
                        "\n\n",\
                        {text:"Click to teleport",italic:true,color:"gray"}\
                    ]}\
                }\       
            ]

$execute if data storage se:storage vals[{UUID:$(UUID)}].homes[$(index)].description run tellraw @s ["", \
                {text:"[x]",color:"red",click_event:{action:"run_command",command:"/trigger sethome set -$(val)"},\
                                        hover_event:{action:"show_text",value:["",{text:"Click to remove",color:"gray",italic:true}]}},\
                " ",\
                {\
                    storage:"se:storage",nbt:"vals[{UUID: $(UUID)}].homes[$(index)].name",color:"gold",\
                    click_event:{action:"run_command",command:"/trigger home set $(val)"},\
                    hover_event:{action:"show_text",value:[\
                        "",\
                        {storage:"se:storage",nbt:"vals[{UUID: $(UUID)}].homes[$(index)].name",color:"green",bold:true},\
                        "\n",\
                        {text:"id: ",color:"gold"},\
                        {storage:"se:storage",nbt:"vals[{UUID: $(UUID)}].homes[$(index)].id"},\
                        "\n",\
                        {text:"Coords: ",color:"gold"},\
                        {score:{name:"#se.pos.x",objective:"se.maxHomes"}},\
                        {text:" "},\
                        {score:{name:"#se.pos.y",objective:"se.maxHomes"}},\
                        {text:" "},\
                        {score:{name:"#se.pos.z",objective:"se.maxHomes"}},\
                        {text:" "},\
                        "\n",\
                        {text:"Dimension: ",color:"gold"},\
                        {storage:"se:storage",nbt:"vals[{UUID: $(UUID)}].homes[$(index)].dimension"},\
                        "\n\n",\
                        {storage:"se:storage",nbt:"vals[{UUID: $(UUID)}].homes[$(index)].description",interpret: true},\
                        "\n\n",\
                        {text:"Click to teleport",italic:true,color:"gray"},\
                    ]}\
                }\       
            ]

scoreboard players add #se.pages_lower_bound se.maxHomes 1
execute unless score #se.pages_lower_bound se.maxHomes > #se.pages_upper_bound se.maxHomes run function se:homes/menu/loop/stage_next with storage se:storage query





