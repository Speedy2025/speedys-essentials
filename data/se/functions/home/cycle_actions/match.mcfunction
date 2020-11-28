data modify storage rx:io playerdb.player.data.se.homes append from storage rx:io playerdb.player.data.se.temphomes[]
data remove storage rx:io playerdb.player.data.se.temphomes
scoreboard players set #cycle.success se.internal 2