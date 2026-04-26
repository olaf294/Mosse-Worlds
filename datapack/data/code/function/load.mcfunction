gamerule announceAdvancements false
gamerule doMobSpawning false
gamerule doFireTick false
gamerule doImmediateRespawn true
gamerule fallDamage false
gamerule keepInventory true
gamerule mobGriefing false
gamerule locatorBar false
gamerule randomTickSpeed 100
gamerule tntExplodes false

time set 23582

scoreboard objectives add id dummy
scoreboard objectives add misc dummy
scoreboard objectives add time dummy
scoreboard objectives add hour dummy
scoreboard objectives add hour2 dummy
scoreboard objectives add timeout dummy
scoreboard objectives add requests dummy
scoreboard objectives add last_played dummy
 
scoreboard objectives add numbers dummy
scoreboard players set -24 numbers -24
scoreboard players set -1 numbers -1
scoreboard players set 4 numbers 4
scoreboard players set 10 numbers 10
scoreboard players set 18 numbers 18
scoreboard players set 20 numbers 20
scoreboard players set 24 numbers 24
scoreboard players set 60 numbers 60
scoreboard players set 100 numbers 100
scoreboard players set 3600 numbers 3600
scoreboard players set 10000 numbers 10000
scoreboard players set 86400 numbers 86400

scoreboard objectives add offset trigger
scoreboard objectives add toggle_info trigger

setworldspawn 0 64 0 0 8

team add player
team modify player friendlyFire false
team modify player collisionRule never

tellraw @a { "color": "gold", "text": "Tʜᴇ Mᴏꜱꜱᴇ ɪꜱ Wᴏʀʟᴅ"}

execute unless loaded 9 64 -19 run return fail

kill @e[tag=time]
summon text_display 13.90 69.0 0.5 {text:[{text:"Cᴜʀʀᴇɴᴛ Tɪᴍᴇ (UTC ",color:gold},{score:{name:".offset",objective:time},color:red},{text:")\n",color:gold},{text:"hh",color:green},{text:":",color:dark_gray},{text:"mm",color:green},{text:":",color:dark_gray},{text:"ss",color:green}],Tags:["time_utc","time"],Rotation:[90,0],transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [2.0f, 2.0f, 2.0f], translation: [0.0f, 0.0f, 0.0f]}}
summon text_display 13.90 68.1 0.5 {text:[{text:"Cᴜʀʀᴇɴᴛ Dᴀᴛᴇ (UTC 0)\n",color:light_purple},{text:"dd",color:yellow},{text:".",color:dark_gray},{text:"mm",color:yellow},{text:".",color:dark_gray},{text:"yyyy",color:yellow}],Tags:["date_utc","time"],Rotation:[90,0],transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.5f, 1.5f, 1.5f], translation: [0.0f, 0.0f, 0.0f]}}

kill @e[tag=moss]
summon text_display 11.9 66.9 -14.5 {text:[{player:Legitermoose},{text:" Lᴇɢɪᴛᴇʀᴍᴏᴏꜱᴇ Sᴛᴀᴛᴜꜱ: ",color:light_purple},{text:"ᴜɴᴋɴᴏᴡɴ",color:yellow}],Tags:["moss","moss_status"],Rotation:[90,0],transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.6f, 1.6f, 1.6f], translation: [0.0f, 0.0f, 0.0f]}}
summon text_display 11.9 66.5 -14.5 {text:{text:"Cʜᴇᴄᴋ ᴛᴏ ꜱᴇᴇ ɪꜰ Lᴇɢɪᴛᴇʀᴍᴏᴏꜱᴇ ɪꜱ ᴏɴʟɪɴᴇ.",color:gray},Tags:["moss"],Rotation:[90,0],transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f]},line_width:500}
summon text_display 11.9 66.1 -14.5 {text:[{text:"Wᴏʀʟᴅ ᴡɪʟʟ ᴅɪꜱᴘʟᴀʏ ",color:gray,extra:[{text:"ʜᴇʀᴇ",color:dark_gray}]},{text:".",color:gray}],Tags:["moss","moss_world"],Rotation:[90,0],transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f]},line_width:500}

kill @e[tag=polish]
summon text_display 11.9 66.9 -22.5 {text:[{player:PolishKrowa},{text:" PᴏʟɪꜱʜKʀᴏᴡᴀ Sᴛᴀᴛᴜꜱ: ",color:light_purple},{text:"ᴜɴᴋɴᴏᴡɴ",color:yellow}],Tags:["polish","polish_status"],Rotation:[90,0],transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.6f, 1.6f, 1.6f], translation: [0.0f, 0.0f, 0.0f]}}
summon text_display 11.9 66.5 -22.5 {text:{text:"Cʜᴇᴄᴋ ᴛᴏ ꜱᴇᴇ ɪꜰ PᴏʟɪꜱʜKʀᴏᴡᴀ ɪꜱ ᴏɴʟɪɴᴇ.",color:gray},Tags:["polish"],Rotation:[90,0],transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f]},line_width:500}
summon text_display 11.9 66.1 -22.5 {text:[{text:"Wᴏʀʟᴅ ᴡɪʟʟ ᴅɪꜱᴘʟᴀʏ ",color:gray,extra:[{text:"ʜᴇʀᴇ",color:dark_gray}]},{text:".",color:gray}],Tags:["polish","polish_world"],Rotation:[90,0],transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f]},line_width:500}

kill @e[tag=discord_join]
summon interaction 5.5 64.5 10.5 {width:2,height:2,Tags:["discord_join"]}
summon text_display 5.5 66.2 9.9 {text:{text:"Cʟɪᴄᴋ ᴛᴏ ᴊᴏɪɴ ᴛʜᴇ Dɪꜱᴄᴏʀᴅ!",color:blue},Tags:["discord_join"],Rotation:[180,0],transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.875f, 0.875f, 0.875f], translation: [0.0f, 0.0f, 0.0f]}}

kill @e[type=interaction,tag=chest_protection_interaction]
summon interaction -6 63.5 8 {Tags:["show_for_timed_out_users","chest_protection_interaction"],width:3,height:2}

scoreboard players set .globaltimer misc 0
execute positioned 10 63 -12 run function code:playerdetect/init