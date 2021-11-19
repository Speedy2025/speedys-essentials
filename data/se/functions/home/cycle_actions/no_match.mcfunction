data modify storage rx.playerdb:io player.data.se.homes append from storage rx.playerdb:io player.data.se.temphomes[]
data remove storage rx.playerdb:io player.data.se.temphomes
scoreboard players set #cycle.success se.internal 3