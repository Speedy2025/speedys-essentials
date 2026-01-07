execute if score @s sethome > @s se.maxHomes unless score @s se.maxHomes matches 1 run tellraw @s ["",{text:"[Home]",color:"green"},{text:" You cannot have more than "},{score:{name:"@s",objective:"se.maxHomes"},color:"gold"},{text:" homes",color:"gold"},"."]
execute if score @s sethome > @s se.maxHomes if score @s se.maxHomes matches 1 run tellraw @s ["",{text:"[Home]",color:"green"},{text:" You cannot have more than "},{text:"1 home",color:"gold"},"."]
execute if score @s sethome > @s se.maxHomes run return fail

execute store result storage se:storage query.val int 1 run scoreboard players get @s home
data modify storage se:storage query.UUID set from entity @s UUID
function se:homes/teleport/cleared with storage se:storage query
data remove storage se:storage query
