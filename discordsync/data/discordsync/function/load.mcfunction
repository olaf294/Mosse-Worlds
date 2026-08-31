scoreboard objectives add requests dummy

# Load message
execute if data storage discordsync:data data.token run tellraw @a[tag=is_admin] ["",{text:"👾 Dɪꜱᴄᴏʀᴅ",color:"#9999ff"},{text:"Sʏɴᴄ",color:"#7777ff"},{text:" » ",color:gray},{text:"ɪɴɪᴛɪᴀʟɪᴢᴇᴅ",color:"#aaaaff"}]
# Reminder to set the Bot Token and Channel ID
execute unless data storage discordsync:data data.token run tellraw @a[tag=is_admin] [{text:"",hover_event:{action:show_text,value:{text:"ʏᴏᴜ ɴᴇᴇᴅ ᴛᴏ ꜱᴇᴛᴜᴘ ᴛʜᴇ ᴄᴏɴꜰɪɢ ʙᴇꜰᴏʀᴇ ᴜꜱɪɴɢ DɪꜱᴄᴏʀᴅSʏɴᴄ!\nᴄʟɪᴄᴋ ʜᴇʀᴇ ᴛᴏ ᴏᴘᴇɴ ᴛʜᴇ ᴄᴏɴꜰɪɢ ᴅɪᴀʟᴏɢ.",color:yellow}},click_event:{action:suggest_command,command:"/function discordsync:_settings/init_dialog"}},{text:"👾 Dɪꜱᴄᴏʀᴅ",color:"#9999ff"},{text:"Sʏɴᴄ",color:"#7777ff"},{text:" » ",color:gray},{text:"ꜱᴇᴛᴜᴘ ʀᴇǫᴜɪʀᴇᴅ! ʜᴏᴠᴇʀ ꜰᴏʀ ɪɴꜰᴏ.",color:red,bold:1b}]

# First call to get last message
function discordsync:fetch/once_ncb with storage discordsync:data data

# next few calls
function discordsync:fetch/once with storage discordsync:data data
schedule function discordsync:fetch/std 20 replace