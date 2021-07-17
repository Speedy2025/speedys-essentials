# Whitelist Comparison
# - Called by se:hub/whitelist_cycler/root & Self
# Context: Player
tellraw @s[tag=se.debug] [{"text":"<Ran Compare - Initial Score: "},{"score":{"name":"#se.hub.whitelist","objective":"se.storage"}},{"text":" "},{"score":{"name":"#se.hub.input","objective":"se.storage"}},{"text":">"}]
#> Check if the list is empty
execute if data storage se:cycler {l1:[]} run scoreboard players set #se.hub.whitelist se.storage 0

#> If list isn't empty, compare scores
execute unless score #se.hub.whitelist se.storage matches 0 store result score #se.hub.whitelist.temp se.storage run data get storage se:cycler l1[-1]
execute unless score #se.hub.whitelist se.storage matches 0 if score #se.hub.whitelist.temp se.storage = #se.hub.input se.storage run scoreboard players set #se.hub.whitelist se.storage 1
tellraw @s[tag=se.debug] [{"text":"<Score: "},{"score":{"name":"#se.hub.whitelist","objective":"se.storage"}},{"text":" "},{"score":{"name":"#se.hub.whitelist.temp","objective":"se.storage"}},{"text":">"}]

#> If the above criteria are true, repair the list.
# Needs to be above the actual cycler so that it doesn't run a ton.
execute unless score #se.hub.whitelist se.storage matches 2 run function se:hub/whitelist_cycler/repair

#> If neither of the above is true, delete one & run again.
# Mid-development optimization: No need to compare if it's empty twice.
execute if score #se.hub.whitelist se.storage matches 2 run data modify storage se:cycler l2 append from storage se:cycler l1[-1]
execute if score #se.hub.whitelist se.storage matches 2 run data remove storage se:cycler l1[-1]
execute if score #se.hub.whitelist se.storage matches 2 run function se:hub/whitelist_cycler/compare

