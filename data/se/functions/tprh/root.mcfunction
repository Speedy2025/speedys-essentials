#Direct players where nessesary
# Positive Values - "Send"
# Negative Values - "Accept"

execute as @s[scores={tprh=1..}] run function se:tprh/send/root
execute as @s[scores={tprh=..-1}] run function se:tprh/accept/root