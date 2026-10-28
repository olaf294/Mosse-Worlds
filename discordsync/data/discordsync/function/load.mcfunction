## Setup 
# Scoreboards
scoreboard objectives add ds.rejoin custom:leave_game
scoreboard objectives add ds.config trigger
scoreboard objectives add ds.style dummy

scoreboard objectives add requests dummy

# only needed for first join detection, but still exists :skull:
scoreboard objectives add ds.id dummy

# load the armor stand with supporting block
forceload add 990 10
execute unless entity e-0-0-0-e run summon armor_stand 1000 50 4 {UUID:[I;14,0,0,14]}
execute unless block 1000 49 4 test_block run setblock 1000 49 4 test_block[mode=start]


## /http On Load
# Load message
execute if data storage discordsync:data data.token run schedule function discordsync:load/load 30

# Reminder to set the Bot Token
execute unless data storage discordsync:data header.Authorization run tellraw @a[tag=is_admin] [{text:"",hover_event:{action:show_text,value:{text:"ʏᴏᴜ ɴᴇᴇᴅ ᴛᴏ ꜱᴇᴛᴜᴘ ᴛʜᴇ ᴄᴏɴꜰɪɢ ʙᴇꜰᴏʀᴇ ᴜꜱɪɴɢ DɪꜱᴄᴏʀᴅSʏɴᴄ!\nᴄʟɪᴄᴋ ʜᴇʀᴇ ᴛᴏ ᴏᴘᴇɴ ᴛʜᴇ ᴄᴏɴꜰɪɢ ᴅɪᴀʟᴏɢ.",color:yellow}},click_event:{action:suggest_command,command:"/function discordsync:_settings/init_dialog"}},{text:"👾 Dɪꜱᴄᴏʀᴅ",color:"#9999ff"},{text:"Sʏɴᴄ",color:"#7777ff"},{text:" » ",color:gray},{text:"ꜱᴇᴛᴜᴘ ʀᴇǫᴜɪʀᴇᴅ! ʜᴏᴠᴇʀ ꜰᴏʀ ɪɴꜰᴏ.",color:red,bold:1b}]

# First call to get last message
function discordsync:fetch/once_ncb with storage discordsync:data data

# next few calls
function discordsync:fetch/once with storage discordsync:data data
schedule function discordsync:fetch/std 40 replace