scoreboard players set #cycle.id home -1
execute store result score #cycle.length se.internal run data get storage rx.playerdb:io player.data.se.homes
execute store result score #cycle.id se.internal run data get storage rx.playerdb:io player.data.se.homes[0].id
execute if score #cycle.id se.internal = #cycle.input se.internal run function se:home/cycle_actions/match
execute if score #cycle.length se.internal matches 0..1 unless score #cycle.id se.internal = #cycle.input se.internal run function se:home/cycle_actions/no_match
execute if score #cycle.length se.internal matches 2.. unless score #cycle.id se.internal = #cycle.input se.internal run function se:home/cycle_actions/next_entry