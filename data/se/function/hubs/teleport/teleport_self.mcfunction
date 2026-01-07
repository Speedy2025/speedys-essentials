data modify storage se:storage query.UUID set from entity @s UUID
function se:hubs/teleport/prepare_teleport with storage se:storage query

data remove storage se:storage query
return 1