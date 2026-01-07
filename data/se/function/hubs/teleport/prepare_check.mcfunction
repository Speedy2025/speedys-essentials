################
# Prepare Next #
################

# Now that we have everybody's IDs, I need their UUID
$execute store success score #se.exists se.uid run data modify storage se:storage query.UUID set from storage se:key vals[{uid: $(their_uid)}].UUID
execute unless score #se.exists se.uid matches 1.. run tellraw @s ["",{text:"[Hub]",color:"green"},{text:" That person does not exist."}]
execute if score #se.exists se.uid matches 1.. run function se:hubs/teleport/check with storage se:storage query