# Speedys Essentials
A datapack inspired by the Essentials plugin that offers homes, hubs, and tpr (like tpa)

## Compatibility
This pack relies on PlayerDB, created by @RitikShah

This pack currently uses the 0.5 version, which is not available anymore. Plans are being made to update to the latest version.


### Advanced Notes on Compatibility
1) -1 0 -1 through 1 5 1 is currently in use for the datapack to be effective, including 0 0 0 being a yellow shulker box.

## Usage
Each player is assigned a uid on join (unless they already have one). This is used in most commands.

To open up a help menu on the commands offered, use `trigger se_help`. You will see basic information about you as a player and see a list of pages to open. Click on the page number (Page 2, for example) to open the page.

### Hubs
Hubs use the root command `trigger hub set #`.

 To travel to a hub, put the uid in for the person's hub you wish to travel to. For example, use `trigger hub set 5` to travel to the player with uid 5's hub.
 
 To manage your hub (moving it, managing lock, and altering the whitelist), use `trigger hub set -1`. This will open a menu for you to view settings or change them with the blue buttons. For setting your hub, it will save your current location, dimension, and rotation. For toggling the whitelist, it will simply flip the setting. For adding or removing players, see the on-screen instructions.

### Homes
Homes use the root command `trigger home set #`.
 
 To travel to one of your hubs, put the home number in that you wish to travel to. For example, use `trigger home set 3` to travel to your third home.

 To set your home, use `trigger home set -#` where # is the home you wish to set. Keep in mind that while you have multiple homes, it is limited by default.

### TPr
TPr uses the root command `trigger tpr set #`.

 To send a request, put in the uid of the person you wish to teleport to. You will recieve a confirmation message and they will recieve a message about your request (unless they have muted it, TSERv4 feature)

 To accept a request, use `trigger tpr set -#` where # is the uid of the person you wish to accept. They will be teleported to you and you both will recieve confirmation messages.
(More documentation soon)
