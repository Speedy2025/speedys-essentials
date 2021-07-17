# Restores last saved ontime
# - Executes if a player logs in with a new name
# Context: Player w/ name change

#> Sets their ontime to the last saved one
execute if score @s rx.pdb.HasEntry matches 1 store result score @s tse_Ontime run data get storage rx:io playerdb.player.data.se.ontime
#] @Speedy2025#2025