# Modify AEC & Teleport Player to it
# - Called by se:misc/teleport_step
# Context: Area Effect Cloud

# As you can see, the input is raw and perfect. :speedy:

#> Modify position based on input
#data modify entity @s Pos[0] set from storage se:input pos.x
#data modify entity @s Pos[1] set from storage se:input pos.y
#data modify entity @s Pos[2] set from storage se:input pos.z
execute store result entity @s Pos[2] double 0.015625 run data get storage se:input pos.z 64
execute store result entity @s Pos[0] double 0.015625 run data get storage se:input pos.x 64
execute store result entity @s Pos[1] double 0.015625 run data get storage se:input pos.y 64

#> Modify rotation based on input
execute store result entity @s Rotation[0] float 0.015625 run data get storage se:input pos.rx 64
execute store result entity @s Rotation[1] float 0.015625 run data get storage se:input pos.rz 64

#> Teleport the player
tp @a[tag=se.target] @s