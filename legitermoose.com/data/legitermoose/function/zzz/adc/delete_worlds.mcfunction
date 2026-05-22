execute unless entity @s[tag=is_dev] run return run tellraw @s {text:"Only Devs and higher can run this function.",color:gray}
tellraw @a[tag=is_admin] {text:"Bᴀᴄᴋɪɴɢ ᴜᴘ Wᴏʀʟᴅꜱ.",color:yellow}

# Only allow 10 backups
execute if data storage legitermoose:worlds backups[10] run return run tellraw @s {text:"Tʜᴇʀᴇ ɪꜱ ɴᴏᴛ ᴇɴᴏᴜɢʜ ʙᴀᴄᴋᴜᴘ ꜱᴘᴀᴄᴇ. ᴏʟᴅ ʙᴀᴄᴋᴜᴘꜱ ᴡɪʟʟ ʙᴇ ᴅᴇʟᴇᴛᴇᴅ.",color:dark_red}
execute if data storage legitermoose:worlds backups.rank_backups[10] run return run tellraw @s {text:"Tʜᴇʀᴇ ɪꜱ ɴᴏᴛ ᴇɴᴏᴜɢʜ ʙᴀᴄᴋᴜᴘ ꜱᴘᴀᴄᴇ. ᴏʟᴅ ʙᴀᴄᴋᴜᴘꜱ ᴡɪʟʟ ʙᴇ ᴅᴇʟᴇᴛᴇᴅ.",color:dark_red}

# Backup
scoreboard players set .global_id legitermoose.misc 0
data modify storage legitermoose:backups backups prepend from storage legitermoose:worlds worlds
data modify storage legitermoose:backups backups.rank_backups prepend from storage legitermoose:ranks worlds

# Delete
tellraw @a[tag=is_admin] {text:"Dᴇʟᴇᴛɪɴɢ Wᴏʀʟᴅꜱ.",color:red}
data remove storage legitermoose:worlds worlds
data remove storage legitermoose:ranks worlds
tellraw @a[tag=is_admin] {text:"Wᴏʀʟᴅꜱ ᴅᴇʟᴇᴛᴇᴅ!",color:green}