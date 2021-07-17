
#) Logic is handled like this:
# - 1. Check if the player is online
#    -> If they are, get their score.
# -  -> If they are not, attempt to look up their uid
#          -> If successful, get their cached score
#          -> If failed, report the player doesn't exist.

# Cached score: #se.ontime.score se.storage

#Amazingterminologywowsurprise
# host vs target vs destination

#Active choice: I decided to make this an all-in-one to save
#   time and effort in programming. For self-lookup, it'll
#   just use this function
scoreboard players set #se.ontime.score se.storage -1

tag @s add se.ontime.host
execute as @a if score @s rx.uid = @a[tag=se.ontime.host,limit=1] ontime store result score #se.ontime.score se.storage run scoreboard players get @s tse_Ontime
execute if score #se.ontime.score se.storage matches -1 run function se:misc/ontime/lookup/retrieve

execute if score #se.ontime.score se.storage matches 1.. run function se:misc/ontime/lookup/full_ontime
execute if score #se.ontime.score se.storage matches 1.. run tellraw @s[tag=!se.mute.system] ["",{"text":"[Ontime] ","color":"green"},{"score":{"name":"#se.ontime.score","objective":"tse_OntimeDays"}},{"text":"d "},{"score":{"name":"#se.ontime.score","objective":"tse_OntimeHours"}},{"text":"h "},{"score":{"name":"#se.ontime.score","objective":"tse_OntimeMinute"}},{"text":"m "},{"score":{"name":"#se.ontime.score","objective":"tse_OntimeSecond"}},{"text":"s"}]

tag @s remove se.ontime.host