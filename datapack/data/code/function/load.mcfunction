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
setworldspawn 0 64 0 0 8
tellraw @a {color:gold,text:"Tʜᴇ Mᴏꜱꜱᴇ ɪꜱ Wᴏʀʟᴅ"}

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
scoreboard players set 200 numbers 200
scoreboard players set 3600 numbers 3600
scoreboard players set 10000 numbers 10000
scoreboard players set 86400 numbers 86400

scoreboard objectives add id dummy
scoreboard objectives add misc dummy
scoreboard objectives add time dummy
scoreboard objectives add hour dummy
scoreboard objectives add hour2 dummy
scoreboard objectives add timeout dummy
scoreboard objectives add requests dummy
scoreboard objectives add last_played dummy
scoreboard objectives add playerdetect dummy

scoreboard objectives add offset trigger
scoreboard objectives add toggle_info trigger

team add player
team modify player friendlyFire true
team modify player collisionRule never

team add z_spawn
team modify z_spawn friendlyFire false
team modify z_spawn collisionRule never
team modify z_spawn color dark_gray

execute unless loaded 9 64 -19 run return fail

function code:realtime/reset_time

kill @e[tag=moss]
summon text_display 11.9 66.9 -14.5 {text:[{player:Legitermoose},{text:" Lᴇɢɪᴛᴇʀᴍᴏᴏꜱᴇ Sᴛᴀᴛᴜꜱ: ",color:light_purple},{text:"ᴜɴᴋɴᴏᴡɴ",color:yellow}],Tags:["moss","moss_status"],Rotation:[90,0],transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.6f, 1.6f, 1.6f], translation: [0.0f, 0.0f, 0.0f]}}
summon text_display 11.9 66.5 -14.5 {text:{text:"Cʜᴇᴄᴋ ᴛᴏ ꜱᴇᴇ ɪꜰ Lᴇɢɪᴛᴇʀᴍᴏᴏꜱᴇ ɪꜱ ᴏɴʟɪɴᴇ.",color:gray},Tags:["moss"],Rotation:[90,0],transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f]},line_width:500}
summon text_display 11.9 66.1 -14.5 {text:[{text:"Wᴏʀʟᴅ ᴡɪʟʟ ᴅɪꜱᴘʟᴀʏ ",color:gray,extra:[{text:"ʜᴇʀᴇ",color:dark_gray}]},{text:".",color:gray}],Tags:["moss","moss_world"],Rotation:[90,0],transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f]},line_width:500}

kill @e[tag=polish]
summon text_display 11.9 66.9 -22.5 {text:[{player:PolishKrowa},{text:" PᴏʟɪꜱʜKʀᴏᴡᴀ Sᴛᴀᴛᴜꜱ: ",color:light_purple},{text:"ᴜɴᴋɴᴏᴡɴ",color:yellow}],Tags:["polish","polish_status"],Rotation:[90,0],transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.6f, 1.6f, 1.6f], translation: [0.0f, 0.0f, 0.0f]}}
summon text_display 11.9 66.5 -22.5 {text:{text:"Cʜᴇᴄᴋ ᴛᴏ ꜱᴇᴇ ɪꜰ PᴏʟɪꜱʜKʀᴏᴡᴀ ɪꜱ ᴏɴʟɪɴᴇ.",color:gray},Tags:["polish"],Rotation:[90,0],transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f]},line_width:500}
summon text_display 11.9 66.1 -22.5 {text:[{text:"Wᴏʀʟᴅ ᴡɪʟʟ ᴅɪꜱᴘʟᴀʏ ",color:gray,extra:[{text:"ʜᴇʀᴇ",color:dark_gray}]},{text:".",color:gray}],Tags:["polish","polish_world"],Rotation:[90,0],transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f]},line_width:500}

kill @e[tag=arvelyx]
summon text_display 52.9 71.9 -43.5 {text:[{player:Arvelyx},{text:" Aʀᴠᴇʟʏx Sᴛᴀᴛᴜꜱ: ",color:light_purple},{text:"ᴜɴᴋɴᴏᴡɴ",color:yellow}],Tags:["arvelyx","arvelyx_status"],Rotation:[90,0],transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.6f, 1.6f, 1.6f], translation: [0.0f, 0.0f, 0.0f]}}
summon text_display 52.9 71.5 -43.5 {text:{text:"Cʜᴇᴄᴋ ᴛᴏ ꜱᴇᴇ ɪꜰ Aʀᴠᴇʟʏx ɪꜱ ᴏɴʟɪɴᴇ.",color:gray},Tags:["arvelyx"],Rotation:[90,0],transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f]},line_width:500}
summon text_display 52.9 71.1 -43.5 {text:[{text:"Wᴏʀʟᴅ ᴡɪʟʟ ᴅɪꜱᴘʟᴀʏ ",color:gray,extra:[{text:"ʜᴇʀᴇ",color:dark_gray}]},{text:".",color:gray}],Tags:["arvelyx","arvelyx_world"],Rotation:[90,0],transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f]},line_width:500}

kill @e[tag=logbog]
summon text_display 52.9 71.9 -35.5 {text:[{player:Logbog},{text:" Lᴏɢʙᴏɢ Sᴛᴀᴛᴜꜱ: ",color:light_purple},{text:"ᴜɴᴋɴᴏᴡɴ",color:yellow}],Tags:["logbog","logbog_status"],Rotation:[90,0],transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.6f, 1.6f, 1.6f], translation: [0.0f, 0.0f, 0.0f]}}
summon text_display 52.9 71.5 -35.5 {text:{text:"Cʜᴇᴄᴋ ᴛᴏ ꜱᴇᴇ ɪꜰ Lᴏɢʙᴏɢ ɪꜱ ᴏɴʟɪɴᴇ.",color:gray},Tags:["logbog"],Rotation:[90,0],transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f]},line_width:500}
summon text_display 52.9 71.1 -35.5 {text:[{text:"Wᴏʀʟᴅ ᴡɪʟʟ ᴅɪꜱᴘʟᴀʏ ",color:gray,extra:[{text:"ʜᴇʀᴇ",color:dark_gray}]},{text:".",color:gray}],Tags:["logbog","logbog_world"],Rotation:[90,0],transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f]},line_width:500}

kill @e[tag=max]
summon text_display 52.9 71.9 -27.5 {text:[{player:mmmmmaaaaaxxxxx},{text:" ᴍᴍᴍᴍᴍᴀᴀᴀᴀᴀxxxxx Sᴛᴀᴛᴜꜱ: ",color:light_purple},{text:"ᴜɴᴋɴᴏᴡɴ",color:yellow}],Tags:["max","max_status"],Rotation:[90,0],transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.45f, 1.45f, 1.45f], translation: [0.0f, 0.0f, 0.0f]}}
summon text_display 52.9 71.5 -27.5 {text:{text:"Cʜᴇᴄᴋ ᴛᴏ ꜱᴇᴇ ɪꜰ ᴍᴍᴍᴍᴍᴀᴀᴀᴀᴀxxxxx ɪꜱ ᴏɴʟɪɴᴇ.",color:gray},Tags:["max"],Rotation:[90,0],transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f]},line_width:500}
summon text_display 52.9 71.1 -27.5 {text:[{text:"Wᴏʀʟᴅ ᴡɪʟʟ ᴅɪꜱᴘʟᴀʏ ",color:gray,extra:[{text:"ʜᴇʀᴇ",color:dark_gray}]},{text:".",color:gray}],Tags:["max","max_world"],Rotation:[90,0],transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f]},line_width:500}

kill @e[tag=koori]
summon text_display 52.9 71.9 -19.5 {text:[{player:KooriKitsune38},{text:" KᴏᴏʀɪKɪᴛꜱᴜɴᴇ38 Sᴛᴀᴛᴜꜱ: ",color:light_purple},{text:"ᴜɴᴋɴᴏᴡɴ",color:yellow}],Tags:["koori","koori_status"],Rotation:[90,0],transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.45f, 1.45f, 1.45f], translation: [0.0f, 0.0f, 0.0f]}}
summon text_display 52.9 71.5 -19.5 {text:{text:"Cʜᴇᴄᴋ ᴛᴏ ꜱᴇᴇ ɪꜰ KᴏᴏʀɪKɪᴛꜱᴜɴᴇ38 ɪꜱ ᴏɴʟɪɴᴇ.",color:gray},Tags:["koori"],Rotation:[90,0],transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f]},line_width:500}
summon text_display 52.9 71.1 -19.5 {text:[{text:"Wᴏʀʟᴅ ᴡɪʟʟ ᴅɪꜱᴘʟᴀʏ ",color:gray,extra:[{text:"ʜᴇʀᴇ",color:dark_gray}]},{text:".",color:gray}],Tags:["koori","koori_world"],Rotation:[90,0],transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f]},line_width:500}

kill @e[tag=torston]
summon text_display 52.9 71.9 -11.5 {text:[{player:T0rston},{text:" T0ʀꜱᴛᴏɴ Sᴛᴀᴛᴜꜱ: ",color:light_purple},{text:"ᴜɴᴋɴᴏᴡɴ",color:yellow}],Tags:["torston","torston_status"],Rotation:[90,0],transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.6f, 1.6f, 1.6f], translation: [0.0f, 0.0f, 0.0f]}}
summon text_display 52.9 71.5 -11.5 {text:{text:"Cʜᴇᴄᴋ ᴛᴏ ꜱᴇᴇ ɪꜰ T0ʀꜱᴛᴏɴ ɪꜱ ᴏɴʟɪɴᴇ.",color:gray},Tags:["torston"],Rotation:[90,0],transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f]},line_width:500}
summon text_display 52.9 71.1 -11.5 {text:[{text:"Wᴏʀʟᴅ ᴡɪʟʟ ᴅɪꜱᴘʟᴀʏ ",color:gray,extra:[{text:"ʜᴇʀᴇ",color:dark_gray}]},{text:".",color:gray}],Tags:["torston","torston_world"],Rotation:[90,0],transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f]},line_width:500}

kill @e[tag=live_counts]
summon text_display 0.5 69.125 9.875 {text:[{text:'"Lɪᴠᴇ" Vᴏᴛᴇ Cᴏᴜɴᴛ: ',color:green},{score:{name:".mosse_votes",objective:misc},color:aqua,underlined:1b}],Rotation:[180,0],transformation:{left_rotation:[0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [3.0f, 3.0f, 3.0f], translation: [0.0f, 0.0f, 0.0f]},Tags:["vote_count","live_counts"]}
summon text_display 0.5 68.125 9.875 {text:[{text:'"Lɪᴠᴇ" Vɪꜱɪᴛ Cᴏᴜɴᴛ: ',color:gold},{score:{name:".mosse_visits",objective:misc},color:yellow,underlined:1b}],Rotation:[180,0],transformation:{left_rotation:[0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [3.0f, 3.0f, 3.0f], translation: [0.0f, 0.0f, 0.0f]},Tags:["visit_count","live_counts"]}

kill @e[tag=jam_random]
summon text_display -18.5 68.25 -6.9 {text:[{text:"Tᴀʀɢᴇᴛ Jᴀᴍ ID: ",color:green},{text:"ᴀʟʟ ᴊᴀᴍꜱ",color:yellow}],Tags:["jam_random"],Rotation:[0,0],transformation:{left_rotation:[0.0f, 0.0f, 0.0f, 1.0f],right_rotation:[0.0f, 0.0f, 0.0f, 1.0f],scale: [2.0f, 2.0f, 2.0f], translation: [0.0f, 0.0f, 0.0f]}}
scoreboard players set .req_jam_id misc 4
scoreboard players set .max_jam misc 4

kill @e[tag=discord_join]
summon interaction 5.5 64.5 10.5 {width:2,height:2,Tags:["discord_join"]}
summon text_display 5.5 66.2 9.9 {text:{text:"Cʟɪᴄᴋ ᴛᴏ ᴊᴏɪɴ ᴛʜᴇ Dɪꜱᴄᴏʀᴅ!",color:blue},Tags:["discord_join"],Rotation:[180,0],transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.875f, 0.875f, 0.875f], translation: [0.0f, 0.0f, 0.0f]}}

kill @e[type=interaction,tag=chest_protection_interaction]
summon interaction -6 63.5 8 {Tags:["show_for_timed_out_users","chest_protection_interaction"],width:3,height:2}

scoreboard players set .globaltimer misc 0
execute positioned 10 63 -12 run function code:playerdetect/init