#It is generally safe to delete this file.
# You only need it if you are using TSERv3 or TSERv4
execute if score @s tse_sneakTime <= @s tse_sneakTimeDel run scoreboard players set @s tse_sneakTick 2

# If Not Shifting
execute if score @s tse_sneakTick matches 2 run scoreboard players set @s tse_sneakTime 0
execute if score @s tse_sneakTick matches 2 run scoreboard players set @s tse_sneakTimeDel -1
execute if score @s tse_sneakTick matches 2 run scoreboard players set @s tse_sneakTick 0
execute if score @s tse_sneakTime matches 2 run scoreboard players set @s tse_sneakTick 0

execute if score @s tse_sneakTime matches 1 run scoreboard players set @s tse_sneakTick 1
scoreboard players operation @s tse_sneakTimeDel = @s tse_sneakTime

# tse_sneakTick detects the first tick that they are sneaking. Reports 1, otherwise 0
# tse_sneakTime tracks how long they have been sneaking. Reports duration, in ticks