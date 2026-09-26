scoreboard players set .globaltimer misc 0

scoreboard players add .total requests 1
scoreboard players add .player_detect requests 1

# useless debug
#tellraw @a[tag=is_admin,tag=!ignore] ["STORAGE player_detect PATH a\n", {storage:player_detect,nbt:a} ]
#tellraw @a[tag=is_admin,tag=!ignore] ["STORAGE player_detect PATH root\n", {storage:player_detect,nbt:"{}"} ]

execute if data storage player_detect {a:{response:[]}} run return run tellraw @a[tag=is_admin,tag=!ignore,tag=!ignore_error] [{text:"\n⚠ Aɴ (API) ᴇʀʀᴏʀ ᴏᴄᴄᴜʀᴇᴅ!\nEʀʀᴏʀ: Response is empty.",color:red}]
execute unless data storage player_detect {a:{status_code:200}} run return run function code:playerdetect/_admin_error
execute if data storage player_detect {a:{status_code:200}} run tellraw @a[tag=is_admin,tag=!ignore] [{text:"(API) Rᴇꜱᴘᴏɴꜱᴇ: ",color:gray,hover_event:{action:show_text,value:"API - Dᴇᴛᴇᴄᴛ Pʟᴀʏᴇʀꜱ"}},{storage:player_detect,nbt:"a.status_code",plain:1b,color:dark_green}]

data modify storage player_detect a set from storage player_detect a.response

execute unless data storage player_detect a[{players:["Logbog"]}] run function code:playerdetect/logbog/_not_online
execute if data storage player_detect a[{players:["Logbog"]}] run scoreboard players set .logbog_online playerdetect 1

execute unless data storage player_detect a[{players:["Legitermoose"]}] run function code:playerdetect/moose/_not_online
execute if data storage player_detect a[{players:["Legitermoose"]}] run scoreboard players set .moose_online playerdetect 1

execute unless data storage player_detect a[{players:["PolishKrowa"]}] run function code:playerdetect/polish/_not_online
execute if data storage player_detect a[{players:["PolishKrowa"]}] run scoreboard players set .polish_online playerdetect 1

execute unless data storage player_detect a[{players:["Arvelyx"]}] run function code:playerdetect/arvelyx/_not_online
execute if data storage player_detect a[{players:["Arvelyx"]}] run scoreboard players set .arvelyx_online playerdetect 1

execute unless data storage player_detect a[{players:["mmmmmaaaaaxxxxx"]}] run function code:playerdetect/max/_not_online
execute if data storage player_detect a[{players:["mmmmmaaaaaxxxxx"]}] run scoreboard players set .max_online playerdetect 1

execute unless data storage player_detect a[{players:["KooriKitsune38"]}] run function code:playerdetect/koori/_not_online
execute if data storage player_detect a[{players:["KooriKitsune38"]}] run scoreboard players set .koori_online playerdetect 1

execute unless data storage player_detect a[{players:["T0rston"]}] run function code:playerdetect/torston/_not_online
execute if data storage player_detect a[{players:["T0rston"]}] run scoreboard players set .torston_online playerdetect 1

execute unless data storage player_detect a[{players:["Ragebird7200"]}] if loaded 41 70 -4 run setblock 41 70 -4 red_concrete
execute if data storage player_detect a[{players:["Ragebird7200"]}] if loaded 41 70 -4 run setblock 41 70 -4 lime_concrete

function code:playerdetect/grant_advancements
function code:playerdetect/send_webhooks
function code:playerdetect/notify_online