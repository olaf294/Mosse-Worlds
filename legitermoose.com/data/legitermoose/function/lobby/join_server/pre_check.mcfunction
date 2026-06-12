setblock 0 65 4 polished_blackstone_button[powered=false,face=floor,facing=south]

$execute if data storage legitermoose:bans global[{id:$(UUID)}] run tellraw @s [{text:"Yᴏᴜ ʜᴀᴠᴇ ʙᴇᴇɴ ᴅᴇɴɪᴇᴅ ᴀᴄᴄᴇꜱꜱ ᴛᴏ ᴛʜᴇ ꜱᴇʀᴠᴇʀ.",color:red}]
$execute if data storage legitermoose:bans global[{id:$(UUID)}] run return run playsound block.note_block.bass master @s ~ ~ ~ 2 0 1

execute unless score .lobby_enabled legitermoose.misc matches 1 if entity @s[tag=!is_admin] run return run tellraw @s {text:"Tʜᴇ ʟᴏʙʙʏ ʜᴀꜱ ʙᴇᴇɴ ᴅɪꜱᴀʙʟᴇᴅ ᴅᴜᴇ ᴛᴏ ᴍᴀɪɴᴛᴇɴᴀɴᴄᴇ.",color:red,italic:1b}


tellraw @s {text:"Cᴏɴɴᴇᴄᴛɪᴏɴ ᴀᴘᴘʀᴏᴠᴇᴅ.",color:green}
function legitermoose:items/lobby/update
inventory @s block 992 54 5 <b> </b> <b> </b> <b> </b> <b> </b> <b> </b><blue><u>legitermoose.com