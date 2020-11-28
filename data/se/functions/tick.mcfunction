scoreboard players add @a tse_Ontime 1
execute as @a[tag=!se.registered] run function se:register
execute as @a[scores={se_help=1..}] run function se:help/root
execute as @a[scores={tpr=1..}] run function se:tpr/send/root
execute as @r[scores={tpr=..-1}] run function se:tpr/accept/root
execute as @a[tag=se.dimswap] unless block ~ ~ ~ end_gateway run function se:dimswap
execute as @r[scores={hub=1..}] unless entity @a[tag=se.dimswap] run function se:hub/teleport/checkinput
execute as @r[scores={hub=..-1}] unless entity @a[tag=se.dimswap] run function se:hub/utility/root
execute as @r[scores={home=1..}] unless entity @a[tag=se.dimswap] run function se:home/root
execute as @r[scores={home=..-1}] unless entity @a[tag=se.dimswap] run function se:home/root
scoreboard players reset @a se_help
scoreboard players reset @a tpr
scoreboard players reset @a hub
scoreboard players reset @a home
scoreboard players enable @a se_help
scoreboard players enable @a tpr
scoreboard players enable @a hub
scoreboard players enable @a home