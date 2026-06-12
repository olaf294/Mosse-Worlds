# Stage 3/4: Server is loading 
function legitermoose:bossbar/_clear_all_bossbars with storage legitermoose:temp bossbar

$bossbar add mosse:loading_world$(id) [{text:"Sᴇʀᴠᴇʀ ɪꜱ ʟᴏᴀᴅɪɴɢ... ᴇꜱᴛɪᴍᴀᴛᴇᴅ ᴡᴀɪᴛ: ",color:white},{score:{name:"@s",objective:world_wait},color:aqua},{text:"ꜱ",color:aqua},{text:" - ᴡᴀɪᴛᴇᴅ: ",color:white},{score:{name:".temp2",objective:wait},color:gray},{text:"ꜱ",color:gray}]
$bossbar set mosse:loading_world$(id) color green
$bossbar set mosse:loading_world$(id) style progress
$bossbar set mosse:loading_world$(id) max 200

scoreboard players set @s wait 200
$bossbar set mosse:loading_world$(id) value 0
$bossbar set mosse:loading_world$(id) players @s