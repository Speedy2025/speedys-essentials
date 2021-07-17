# Speedy's Essentials v3
A datapack inspired by the Essentials plugin that offers homes, hubs, and teleport requests.


# Quick Notes

## Compatibility
This pack relies on `PlayerDB`, created by rx#1284 on Discord. It should work with the latest version. There are no known datapacks that conflict with this.

## Usage
Each player is assigned a uid on join (unless they already have one). This is used by most commands in place of traditional uuids or names.

To open up a help menu on the commands offered, use `/trigger se_help`. You will see basic information about you as a player and see a list of pages to open. Click on the page number (Page 2, for example) to open the page and learn more about Speedy's Essentials. 


# Features in Depth

## New Feature: Admin Tags
Introducing... admin tags!

What are admin tags? Admin tags are used to control players individually and change how they interact with the datapack. Here's the full list of admin tags that administrators can give players:
* **se.bypass** - Bypass all hub locks & whitelists
* **se.afk** - Stops players from gaining ontime
* **se.disable.all** - Hides all features of the datapack except messages and ontime.
* **se.disable.homes** - Disables the ability to use homes
* **se.disable.hubs** - Disables the ability to use hubs
* **se.disable.tpr** - Disables the ability to send or accept teleport requests
* **se.disable.se_help** - Disables the ability to view the help menu
* **se.disable.ontime** - Disables the ability to view other players' ontime
* **se.mute.system** - Silences all system messages
* **se.mute.tpr** - Silences incoming teleport requests

Admin tags are not given to players by default and must be given through other datapacks or manually through the tag command.

## Homes
Feel assured to explore with homes!

Primary command: `/trigger home set #`

Homes act like waypoints in that you can put them anywhere you are and instantly travel to them at any time. Only you can travel to your own homes.

## Hubs
Create a hub for others to explore with hubs!

Primary command: `/trigger hub set #`

Hubs are a way to allow other players to explore your base or creation. By default, when you set your hub, all players can travel to it. If you don't like it, you can make it so specific players or nobody except you are able to travel to it through whitelisting and locks.

## Teleport Requests (TPr)
Teleport to others easily and without operator status through teleport requests!

Primary command: `/trigger tpr set #`

Teleport requests allow players to ask to be teleported to another player, who chooses to accept or ignore the request. By doing this, players choose who gets to see their base and it is unnessesary to give players operator status to teleport them and others around.

# FAQ
### Q. Is Speedy's Essentials easy to install?

A. *Yes! All you need to do is take the datapack and put it into your datapacks folder inside each world you want it in.*

### Q. Does Speedy's Essentials require any other datapacks?

A. *Yes. PlayerDB by @rx#1284 is manditory.*

### Q. How do I use (insert feature) in Speedy's Essentials?

A. *Everything is explained in detail in the help menu.  You can access it in game through `/trigger se_help`.*

### Q. Can I give you a hug and kiss?

A. *Absolutely not, but you can show your love by reporting any bugs to me on discord* **@Speedy2025#2025**. *You can find me on the r/MinecraftCommands discord or on @rx#1284's discord*



e