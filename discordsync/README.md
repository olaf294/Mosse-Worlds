# DiscordSync — Sync Discord chat into your Legitimoose worlds

## Overview
DiscordSync is a customizable, clean-looking integration into your Legitimoose world that will sync any Discord channel (provided you set it up and have at least ꜰᴍ²) with your in-game chat. DiscordSync also logs join and leave actions.

To use DiscordSync, follow this short guide. DiscordSync has a few useful features out of the box and can be extended in functionality at your liking. 

If you want to request a new feature in regular DiscordSync, then send your feedback at https://discord.gg/KTAusBx2GH in the suggestions channel (<#1475131746352758886>).

## Install Guide
To get started, you need a world where the owner has the ꜰᴍ² rank. You will also need to be on legitimoose.com. 

Before installing DiscordSync in-game, you will need to create a discord bot. This can be done on the [Discord Developer Portal](https://discord.com/developers/applications). Create a new application and COPY THE TOKEN. You will need it later on in the setup. Paste it somewhere safe, such as in a text file on your desktop.

Your application will require the permissions "Read Message History" and "View Channels". Make sure that you generate an invite link with the right permissions (the correct Permissions Integer should be 66560).
Invite the newly created bot to your server and double check the permissions. You can manually edit these in the role config for your application. Lastly, create a channel that you want to sync the messages to. 

---

Now that you have completed everything on the Discord side, it is time to install DiscordSync on your world. Simply drag the folder "discordsync" into the datapack folder (Note: To access the datapack folder on the server, remove the `/datapack` at the end of the url, so that the folder paramater looks like this: `?folder=/home/coder/project/`)

---

After the pack is uploaded successfully, you can close the editor and go back into Minecraft. Run `/reload` to load the datapack in-game. If you did everything correctly, you should get a warning about the config missing. This is a built-in feature to help you set up the datapack more easily. You can click on the message in chat to automatically auto-complete `/function discordsync:_settings/init_dialog`.

Run this command and you will see the main settings menu for DiscordSync. Do not get confused about the mode, as long as that is set to default, you are good. Now for each field, do the following:

| Variable | Input |
|-|-|
| Bot Token | Enter your Bot Token **WITHOUT** any extra decorators. No further spaces, extra prefixes or suffixes may be entered. |
| Channel ID | Enter the Channel ID of the channel that you want to sync from / to. To be able to get the channel ID, enable Developer Mode in Discord Settings.
| Guild ID | Optional. Enter the Server ID of the server you want to have roles taken from. This is used for getting a role list of your Guild.
| Last Message ID | When setting up for the first time, you must enter the ID of the message that you want to start syncing from. |
| Botmaster Role ID | Optional. Enter the role ID for users that should be able to use admin commands, such as `!eval`, `!mute`, etc. |
| Name type | Set to "Username" if you want to sync the username. This is the name used for mentions on Discord. If you set this to "Global Name", it will sync the users global display name (without nickname). |
| Save Settings | Press to save the settings. |
| Discard | Cancels updating the settings. |
| Toggle Config | This is a feature useful in development to automatically swap out the config for a dev one. It can be useful, although it shouldn't come in handy for regular users |

---

If you did everything right, you will now be able to send messages in Discord that appear in the in-game chat. If not, try contacting me and I will help you troubleshooting. A guide for troubleshooting will likely come in the future!

## Addons
If you want to expand on DiscordSync, you can use the namespace `ds-addons` and the built-in function tags `function #ds-addons:edit_help` (to edit the `!help` message) and `function #ds-addons:commands` (to add your own custom commands).
For now, there won't be much documentation on this topic, but it will come in the future.