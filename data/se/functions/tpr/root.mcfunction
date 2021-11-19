#Direct players where nessesary
# Positive Values - "Send"
# Negative Values - "Accept"

execute as @s[scores={tpr=1..}] run function se:tpr/send/root
execute as @s[scores={tpr=..-1}] run function se:tpr/accept/root