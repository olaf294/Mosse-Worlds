# Stage 2/4: Started server
function legitermoose:bossbar/_clear_all_bossbars with storage legitermoose:temp bossbar

execute store result score @s world_wait run random value 10..34
scoreboard players reset @s server_wait

$bossbar add mosse:started_world$(id) [{text:"Sᴛᴀʀᴛᴇᴅ ꜱᴇʀᴠᴇʀ... ᴇꜱᴛɪᴍᴀᴛᴇᴅ ᴡᴀɪᴛ: ",color:white},{score:{name:"@s",objective:world_wait},color:aqua},{text:"ꜱ",color:aqua},{text:" - ᴡᴀɪᴛᴇᴅ: ",color:white},{score:{name:".temp2",objective:"wait"},color:gray},{text:"ꜱ",color:gray}]
$bossbar set mosse:started_world$(id) color yellow 
$bossbar set mosse:started_world$(id) style notched_12
$bossbar set mosse:started_world$(id) max 200

scoreboard players set @s wait 0
$bossbar set mosse:started_world$(id) value 0
$bossbar set mosse:started_world$(id) players @s