scoreboard players add .global id 1
scoreboard players operation @s id = .global id

# First join send message
tellraw @a[tag=is_admin] [{selector:"@s",color:green},{text:" ᴊᴏɪɴᴇᴅ ꜰᴏʀ ᴛʜᴇ ꜰɪʀꜱᴛ ᴛɪᴍᴇ!",color:yellow}]

# Playerlist / Sidebar
function legitermoose:mosse/enter_spawn
function code:sidebar/tps/update_sidebar