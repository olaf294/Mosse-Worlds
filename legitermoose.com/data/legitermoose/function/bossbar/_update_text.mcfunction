$execute store result bossbar mosse:waiting_for_world$(id) value run scoreboard players get .temp wait
$execute store result bossbar mosse:loading_world$(id) value run scoreboard players get .temp wait
$execute store result bossbar mosse:started_world$(id) value run scoreboard players get .temp wait

$bossbar set mosse:started_world$(id) name [{text:"Sᴛᴀʀᴛᴇᴅ ꜱᴇʀᴠᴇʀ... ᴇꜱᴛɪᴍᴀᴛᴇᴅ ᴡᴀɪᴛ: ",color:white},{score:{name:"@s",objective:world_wait},color:aqua},{text:"ꜱ",color:aqua},{text:" - ᴡᴀɪᴛᴇᴅ: ",color:white},{storage:"legitermoose:temp",nbt:"bossbar.waited",color:gray},{text:"ꜱ",color:gray}] 
$bossbar set mosse:loading_world$(id) name [{text:"Sᴇʀᴠᴇʀ ɪꜱ ʟᴏᴀᴅɪɴɢ... Eꜱᴛɪᴍᴀᴛᴇᴅ ᴡᴀɪᴛ: ",color:white},{score:{name:"@s",objective:world_wait},color:aqua},{text:"ꜱ",color:aqua},{text:" - Wᴀɪᴛᴇᴅ: ",color:white},{storage:"legitermoose:temp",nbt:"bossbar.waited",color:gray},{text:"ꜱ",color:gray}] 