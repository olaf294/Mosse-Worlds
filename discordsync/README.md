# DiscordSync — Sync Discord chat into your Legitimoose worlds

## Overview
DiscordSync is a customizable, clean-looking integration into your Legitimoose world that will sync any Discord channel (provided you set it up and have at least ꜰᴍ²) with your in-game chat. DiscordSync also logs join and leave actions.

To use DiscordSync, follow this short guide. DiscordSync has a few useful features out of the box and can be extended in functionality at your liking. 

If you want to request a new feature in regular DiscordSync, then send your feedback at https://discord.gg/KTAusBx2GH in the suggestions channel (<#1475131746352758886>). You can also open a GitHub issue if you want.

## Install Guide
### Preparation
To get started, you need a world where the owner has the ꜰᴍ² rank. You will also need to be on legitimoose.com. 

This datapack also uses the `/playerlist <targets> header` slot. If you would like to keep using it, change the option of parsing MiniMessage to "Off" in the config.

### Discord Bot
Before installing DiscordSync in-game, you will need to create a discord bot. This can be done on the [Discord Developer Portal](https://discord.com/developers/applications).
Create a new application and COPY THE TOKEN. You will need it later on in the setup. Paste it somewhere safe, such as in a text file on your desktop.

Your application will require the permissions "Read Message History" and "View Channels". Make sure that you generate an invite link with the right permissions (the correct Permissions Integer should be 66560).
After creating the application, you need to allow it to read messages in your server. For that, go to the "Bot" section, then under "Privileged Gateway Intents" make sure to enable "Message Content Intent".
Invite the newly created bot to your server and double check the permissions. You can manually edit these in the role config for your application. Lastly, create a channel that you want to sync the messages to. 


### In-Game Setup
Now that you have completed everything on the Discord side, it is time to install DiscordSync on your world. Simply drag the folder "discordsync" into the datapack folder
(Note: To access the datapack folder on the server, remove the `/datapack` at the end of the url, so that the folder paramater looks like this: `?folder=/home/coder/project/`)

---

After the pack is uploaded successfully, you can close the editor and go back into Minecraft. Run `/reload` to load the datapack in-game.

### Config Dialog
If you did everything correctly to this point, you should get a warning about the config missing. This is a built-in feature to help you set up the datapack more easily.
You can click on the message in chat to automatically auto-complete `/function discordsync:_settings/init_dialog`.

Run this command and you will see the main settings menu for DiscordSync. Do not get confused about the mode, as long as that is set to default, you are good.
Now for each field, do the following:

| Variable | Input |
|-|-|
| Bot Token | Enter your Bot Token **WITHOUT** any extra decorators. No further spaces, extra prefixes or suffixes may be entered. |
| Webhook URL | Enter your Webhook URL **WITHOUT** any extra decorators. This is the webhook that will send messages from `/trigger ds.send`. |
| Channel ID | Enter the Channel ID of the channel that you want to sync from / to. To be able to get the channel ID, enable Developer Mode in Discord Settings.
| Guild ID | Optional. Enter the Server ID of the server you want to have roles taken from. This is used for getting a role list of your Guild.
| Last Message ID | When setting up for the first time, you must enter the ID of the message that you want to start syncing from. |
| Botmaster Role ID | Optional. Enter the role ID for users that should be able to use admin commands, such as `!eval`, `!mute`, etc. |
| Name type | Set to "Username" if you want to sync the username. This is the name used for mentions on Discord. If you set this to "Global Name", it will sync the users global display name (without nickname). |
| Parse MiniMessage | Set to "On" if you want users to use colors in synced messages. Set to "Off" to disable the functionality entirely. "Only remove tags" is getting implemented in the future. |
| Save Settings | Press to save the settings. |
| Discard | Cancels updating the settings. |
| Toggle Config | This is a feature useful in development to automatically swap out the config for a dev one. It can be useful, although it shouldn't come in handy for regular users |

---

If everything goes right, you will now be able to send messages in Discord that appear in the in-game chat.

If not, try contacting me and I will help you with troubleshooting. **A guide for troubleshooting can be found *below*.**

## Addons
If you want to expand on DiscordSync, you can use the namespace `ds-addons` and the built-in function tags `function #ds-addons:edit_help` (to edit the `!help` message) and `function #ds-addons:commands` (to add your own custom commands).
For now, there won't be much documentation on this topic, but it will come in the future.

## Uninstall
To delete most scoreboards, storage content and blocks, run the function `discordsync:zzz/uninstall`. This will NOT ask for confirmation and there is NO way to restore the data. The datapack should be removed before the next reload.
You must manually remove the scoreboard `requests` with `scoreboard objectives remove requests`. 

## Troubleshooting
Before using DiscordSync, you might have to **rejoin the world** to set up certain functionality.

If you are still encountering any issues with DiscordSync, check these following problems:

---

- **Messages are not being sent at all.**

    - Check that your config is set up correctly and isn't missing any fields.

    _This issue can also occur when your bot is set up incorrectly._
    - Check that the bot can see the channel and has the permission to read messages (message history).
    - Check that you are writing in the correct channel.
    - Check that your bot has the "Message Content" gateway intent.
    - Check that you 

---

- **Messages are being synced, but the message doesn't show up.**
    - This can happen for multiple reasons. 
    - The most common one is that your bot is set up incorrectly. See the previous section for tips with bot issues.

---

- **Messages have a weird formatting on Discord.**
    - Try rejoining your world if something looks off. Chances are that there is residue data from old versions of DiscordSync.

---

- **Sending messages doesn't work. / Messages don't sync.**
    - This one cannot be easily fixed, as the way that /http works makes for a not so good system of first come, first serve. That means that if any other /http command runs before DiscordSync and DS lands in the cooldown, the attempt to send the request fails.

---

- **My issue is not on here!**
    - Contact me. Either make a GitHub issue where you describe your problem in detail or message me through any means of communication that is suitable. I will try to help you as best as I can. 


## Yapping
DiscordSync is just a quick little project that started off because I saw ChatSync and wanted to make it but "better" and "open source". I quickly made a prototype, then I progressively added more and more features to the datapack. Now, with *a few* hours put into this project and many features, it is more than fun to find new mechanics and use them to add even more features that will come in handy at *some point in time*. For now, DiscordSync will continue to grow and see updates.  