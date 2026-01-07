#########
# Check #
#########

# Now that we have the information required, time to perform the check.
$execute if data storage se:storage vals[{UUID: $(UUID)}].hub{status:0} run function se:hubs/teleport/prepare_teleport with storage se:storage query
$execute if data storage se:storage vals[{UUID: $(UUID)}].hub{status:1}.list[{uid: $(my_uid)}] run function se:hubs/teleport/prepare_teleport with storage se:storage query
$execute if data storage se:storage vals[{UUID: $(UUID)}].hub{status:2} unless data storage se:storage vals[{UUID: $(UUID)}].hub{status:2}.list[{uid: $(my_uid)}] run function se:hubs/teleport/prepare_teleport with storage se:storage query

execute unless score @s hub matches -999 run tellraw @s ["",{text:"[Hub]",color:"green"},{text:" You cannot teleport to that hub."}]
scoreboard players reset @s hub