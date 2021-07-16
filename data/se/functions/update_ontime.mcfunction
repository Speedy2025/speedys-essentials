# Ontime Saving
# - Executes every 60 seconds
# Context: Server

execute as @a run function se:misc/ontime/update

# This is to prevent an old bug that I came across
# where /schedule ... replace did NOT actually replace
# In addition, it is a failsafe in case something goes wrong.
schedule clear se:update_ontime
schedule function se:update_ontime 60s replace
#] @Speedy2025#2025