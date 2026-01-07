##############
# Print Name #
##############

# Given the context of a UID, find their name.
$execute if data storage se:key vals[{uid: $(uid)}].name run return run tellraw @s ["",{text:"$(uid). ",color:"#2299dd"},{storage:"se:key",nbt:"vals[{uid: $(uid)}].name",color:"gold",click_event:{action:"suggest_command",command:"/trigger hub set $(uid)"}}]
return fail
