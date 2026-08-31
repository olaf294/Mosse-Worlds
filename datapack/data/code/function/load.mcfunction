gamerule fire_spread_radius_around_player 0
gamerule show_advancement_messages true
gamerule immediate_respawn true
gamerule keep_inventory true
gamerule random_tick_speed 0
gamerule mob_griefing false
gamerule tnt_explodes false
gamerule fall_damage false
gamerule locator_bar false
gamerule spawn_mobs false

time set 23582
setworldspawn 0 64 0 0 8
tellraw @a {color:gold,text:"Tʜᴇ Mᴏꜱꜱᴇ ɪꜱ Wᴏʀʟᴅ"}

scoreboard objectives add numbers dummy
scoreboard players set -24 numbers -24
scoreboard players set -1 numbers -1
scoreboard players set 4 numbers 4
scoreboard players set 5 numbers 5
scoreboard players set 10 numbers 10
scoreboard players set 15 numbers 15
scoreboard players set 16 numbers 16
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
scoreboard objectives add requests dummy
scoreboard objectives add last_played dummy
scoreboard objectives add playerdetect dummy

scoreboard objectives add toggle_info trigger
scoreboard objectives add minimal_lobby trigger

scoreboard objectives add offset trigger
scoreboard objectives add p_offset_h dummy
scoreboard objectives add p_offset_m dummy
scoreboard objectives add p_hour dummy
scoreboard objectives add p_min dummy

team add player
team modify player friendlyFire true
team modify player collisionRule never

team add z_spawn
team modify z_spawn friendlyFire false
team modify z_spawn collisionRule never
team modify z_spawn color dark_gray

execute unless loaded 9 64 -19 run return fail

kill @e[type=text_display,tag=display]
summon text_display 11.9 66.9 -14.5 {text:[{player:Legitermoose},{text:" Lᴇɢɪᴛᴇʀᴍᴏᴏꜱᴇ Sᴛᴀᴛᴜꜱ: ",color:light_purple},{text:"ᴜɴᴋɴᴏᴡɴ",color:yellow}],Tags:["display","moss_status"],Rotation:[90,0],transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.6f, 1.6f, 1.6f], translation: [0.0f, 0.0f, 0.0f]}}
summon text_display 11.9 66.5 -14.5 {text:{text:"Cʜᴇᴄᴋ ᴛᴏ ꜱᴇᴇ ɪꜰ Lᴇɢɪᴛᴇʀᴍᴏᴏꜱᴇ ɪꜱ ᴏɴʟɪɴᴇ.",color:gray},Tags:["display"],Rotation:[90,0],transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f]},line_width:500}
summon text_display 11.9 66.1 -14.5 {text:[{text:"Wᴏʀʟᴅ ᴡɪʟʟ ᴅɪꜱᴘʟᴀʏ ",color:gray,extra:[{text:"ʜᴇʀᴇ",color:dark_gray}]},{text:".",color:gray}],Tags:["display","moss_world"],Rotation:[90,0],transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f]},line_width:500}

summon text_display 11.9 66.9 -22.5 {text:[{player:PolishKrowa},{text:" PᴏʟɪꜱʜKʀᴏᴡᴀ Sᴛᴀᴛᴜꜱ: ",color:light_purple},{text:"ᴜɴᴋɴᴏᴡɴ",color:yellow}],Tags:["display","polish_status"],Rotation:[90,0],transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.6f, 1.6f, 1.6f], translation: [0.0f, 0.0f, 0.0f]}}
summon text_display 11.9 66.5 -22.5 {text:{text:"Cʜᴇᴄᴋ ᴛᴏ ꜱᴇᴇ ɪꜰ PᴏʟɪꜱʜKʀᴏᴡᴀ ɪꜱ ᴏɴʟɪɴᴇ.",color:gray},Tags:["display"],Rotation:[90,0],transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f]},line_width:500}
summon text_display 11.9 66.1 -22.5 {text:[{text:"Wᴏʀʟᴅ ᴡɪʟʟ ᴅɪꜱᴘʟᴀʏ ",color:gray,extra:[{text:"ʜᴇʀᴇ",color:dark_gray}]},{text:".",color:gray}],Tags:["display","polish_world"],Rotation:[90,0],transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f]},line_width:500}

summon text_display 42.9 71.9 -43.5 {text:[{player:Arvelyx},{text:" Aʀᴠᴇʟʏx Sᴛᴀᴛᴜꜱ: ",color:light_purple},{text:"ᴜɴᴋɴᴏᴡɴ",color:yellow}],Tags:["display","arvelyx_status"],Rotation:[90,0],transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.6f, 1.6f, 1.6f], translation: [0.0f, 0.0f, 0.0f]}}
summon text_display 42.9 71.5 -43.5 {text:{text:"Cʜᴇᴄᴋ ᴛᴏ ꜱᴇᴇ ɪꜰ Aʀᴠᴇʟʏx ɪꜱ ᴏɴʟɪɴᴇ.",color:gray},Tags:["display"],Rotation:[90,0],transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f]},line_width:500}
summon text_display 42.9 71.1 -43.5 {text:[{text:"Wᴏʀʟᴅ ᴡɪʟʟ ᴅɪꜱᴘʟᴀʏ ",color:gray,extra:[{text:"ʜᴇʀᴇ",color:dark_gray}]},{text:".",color:gray}],Tags:["display","arvelyx_world"],Rotation:[90,0],transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f]},line_width:500}

summon text_display 42.9 71.9 -35.5 {text:[{player:Logbog},{text:" Lᴏɢʙᴏɢ Sᴛᴀᴛᴜꜱ: ",color:light_purple},{text:"ᴜɴᴋɴᴏᴡɴ",color:yellow}],Tags:["display","logbog_status"],Rotation:[90,0],transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.6f, 1.6f, 1.6f], translation: [0.0f, 0.0f, 0.0f]}}
summon text_display 42.9 71.5 -35.5 {text:{text:"Cʜᴇᴄᴋ ᴛᴏ ꜱᴇᴇ ɪꜰ Lᴏɢʙᴏɢ ɪꜱ ᴏɴʟɪɴᴇ.",color:gray},Tags:["display"],Rotation:[90,0],transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f]},line_width:500}
summon text_display 42.9 71.1 -35.5 {text:[{text:"Wᴏʀʟᴅ ᴡɪʟʟ ᴅɪꜱᴘʟᴀʏ ",color:gray,extra:[{text:"ʜᴇʀᴇ",color:dark_gray}]},{text:".",color:gray}],Tags:["display","logbog_world"],Rotation:[90,0],transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f]},line_width:500}

summon text_display 42.9 71.9 -27.5 {text:[{player:mmmmmaaaaaxxxxx},{text:" ᴍᴍᴍᴍᴍᴀᴀᴀᴀᴀxxxxx Sᴛᴀᴛᴜꜱ: ",color:light_purple},{text:"ᴜɴᴋɴᴏᴡɴ",color:yellow}],Tags:["display","max_status"],Rotation:[90,0],transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.45f, 1.45f, 1.45f], translation: [0.0f, 0.0f, 0.0f]}}
summon text_display 42.9 71.5 -27.5 {text:{text:"Cʜᴇᴄᴋ ᴛᴏ ꜱᴇᴇ ɪꜰ ᴍᴍᴍᴍᴍᴀᴀᴀᴀᴀxxxxx ɪꜱ ᴏɴʟɪɴᴇ.",color:gray},Tags:["display"],Rotation:[90,0],transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f]},line_width:500}
summon text_display 42.9 71.1 -27.5 {text:[{text:"Wᴏʀʟᴅ ᴡɪʟʟ ᴅɪꜱᴘʟᴀʏ ",color:gray,extra:[{text:"ʜᴇʀᴇ",color:dark_gray}]},{text:".",color:gray}],Tags:["display","max_world"],Rotation:[90,0],transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f]},line_width:500}

summon text_display 42.9 71.9 -19.5 {text:[{player:KooriKitsune38},{text:" KᴏᴏʀɪKɪᴛꜱᴜɴᴇ38 Sᴛᴀᴛᴜꜱ: ",color:light_purple},{text:"ᴜɴᴋɴᴏᴡɴ",color:yellow}],Tags:["display","koori_status"],Rotation:[90,0],transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.45f, 1.45f, 1.45f], translation: [0.0f, 0.0f, 0.0f]}}
summon text_display 42.9 71.5 -19.5 {text:{text:"Cʜᴇᴄᴋ ᴛᴏ ꜱᴇᴇ ɪꜰ KᴏᴏʀɪKɪᴛꜱᴜɴᴇ38 ɪꜱ ᴏɴʟɪɴᴇ.",color:gray},Tags:["display"],Rotation:[90,0],transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f]},line_width:500}
summon text_display 42.9 71.1 -19.5 {text:[{text:"Wᴏʀʟᴅ ᴡɪʟʟ ᴅɪꜱᴘʟᴀʏ ",color:gray,extra:[{text:"ʜᴇʀᴇ",color:dark_gray}]},{text:".",color:gray}],Tags:["display","koori_world"],Rotation:[90,0],transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f]},line_width:500}

summon text_display 42.9 71.9 -11.5 {text:[{player:T0rston},{text:" T0ʀꜱᴛᴏɴ Sᴛᴀᴛᴜꜱ: ",color:light_purple},{text:"ᴜɴᴋɴᴏᴡɴ",color:yellow}],Tags:["display","torston_status"],Rotation:[90,0],transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.6f, 1.6f, 1.6f], translation: [0.0f, 0.0f, 0.0f]}}
summon text_display 42.9 71.5 -11.5 {text:{text:"Cʜᴇᴄᴋ ᴛᴏ ꜱᴇᴇ ɪꜰ T0ʀꜱᴛᴏɴ ɪꜱ ᴏɴʟɪɴᴇ.",color:gray},Tags:["display"],Rotation:[90,0],transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f]},line_width:500}
summon text_display 42.9 71.1 -11.5 {text:[{text:"Wᴏʀʟᴅ ᴡɪʟʟ ᴅɪꜱᴘʟᴀʏ ",color:gray,extra:[{text:"ʜᴇʀᴇ",color:dark_gray}]},{text:".",color:gray}],Tags:["display","torston_world"],Rotation:[90,0],transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f]},line_width:500}

summon text_display 0.5 69.125 9.9 {text:[{text:'"Lɪᴠᴇ" Vᴏᴛᴇ Cᴏᴜɴᴛ: ',color:green},{score:{name:".mosse_votes",objective:misc},color:aqua,underlined:1b}],Rotation:[180,0],transformation:{left_rotation:[0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [3.0f, 3.0f, 3.0f], translation: [0.0f, 0.0f, 0.0f]},Tags:["display","counts"],UUID:[I;15,2,0,0]}
summon text_display 0.5 68.125 9.9 {text:[{text:'"Lɪᴠᴇ" Vɪꜱɪᴛ Cᴏᴜɴᴛ: ',color:gold},{score:{name:".mosse_visits",objective:misc},color:yellow,underlined:1b}],Rotation:[180,0],transformation:{left_rotation:[0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [3.0f, 3.0f, 3.0f], translation: [0.0f, 0.0f, 0.0f]},Tags:["display","counts"],UUID:[I;15,2,0,1]}

summon text_display -4.0 65.3 16.9 {text:{text:'ᴡᴏʀʟᴅ ʙʀᴏᴡꜱᴇʀ',color:yellow},Rotation:[180,0],transformation:{left_rotation:[0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.4f, 1.4f, 1.4f], translation: [0.0f, 0.0f, 0.0f]},Tags:["display"]}

summon text_display -18.5 68.25 -6.9 {text:[{text:"Tᴀʀɢᴇᴛ Jᴀᴍ ID: ",color:green},{text:"ᴀʟʟ ᴊᴀᴍꜱ",color:yellow}],Tags:["jam_random","display"],Rotation:[0,0],transformation:{left_rotation:[0.0f, 0.0f, 0.0f, 1.0f],right_rotation:[0.0f, 0.0f, 0.0f, 1.0f],scale: [2.0f, 2.0f, 2.0f], translation: [0.0f, 0.0f, 0.0f]}}
scoreboard players set .req_jam_id misc 0
scoreboard players set .max_jam misc 5

kill @e[tag=discord_join]
summon interaction 5.5 64.5 10.5 {width:2,height:2,Tags:["discord_join"],UUID:[I;15,3,0,1]}
summon text_display 5.5 66.2 9.9 {text:{text:"Cʟɪᴄᴋ ᴛᴏ ᴊᴏɪɴ ᴛʜᴇ Dɪꜱᴄᴏʀᴅ!",color:blue},Tags:["discord_join","display"],Rotation:[180,0],transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.875f, 0.875f, 0.875f], translation: [0.0f, 0.0f, 0.0f]}}

scoreboard players set .globaltimer misc 0
schedule function code:playerdetect/init 10 replace

execute positioned 15 65 -4 run function code:realtime/reset_time