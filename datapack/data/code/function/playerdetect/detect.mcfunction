scoreboard players set .globaltimer misc 0

# =-=-=-= Error Handling =-=-=-=
execute if data storage player_detect {a:{status_code:503}} positioned 9 64 -19 run return run tellraw @a[distance=..10] [{text:"\n⚠ Aɴ API ᴇʀʀᴏʀ ᴏᴄᴄᴜʀᴇᴅ!\nEʀʀᴏʀ: ",color:red},{storage:player_detect,nbt:a.response.message}]

# =-=-=-= Player Detect =-=-=-=
scoreboard players add .total requests 1
scoreboard players add .player_detect requests 1

# If errors, stop execution.
execute if data storage player_detect a.error run tellraw @a[tag=is_admin,tag=!ignore] [{text:"\n⚠ An error occured!\nError: ",color:red},{storage:player_detect,nbt:a.error.message}]
execute if data storage player_detect a.error run return fail

# General Status Message
execute if data storage player_detect {a:{status_code:200}} run tellraw @a[tag=is_admin,tag=!ignore] [{text:"(API) Rᴇꜱᴘᴏɴꜱᴇ: ",color:gray,hover_event:{action:show_text,value:"API - Detect Players"}},{storage:player_detect,nbt:"a.status_code",color:dark_green}]
execute unless data storage player_detect {a:{status_code:200}} run tellraw @a[tag=is_admin,tag=!ignore] [{text:"(API) Rᴇꜱᴘᴏɴꜱᴇ: ",color:gray,hover_event:{action:show_text,value:"API - Detect Players"}},{storage:player_detect,nbt:"a.status_code",color:yellow}]



# =-=-=-= Logbog Detect =-=-=-=
execute if data storage player_detect a.response[{name:"Logbog"}] positioned 47 69 -35 run function code:playerdetect/logbog/_found
execute unless data storage player_detect a.response[{name:"Logbog"}] positioned 47 69 -35 run function code:playerdetect/logbog/_notfound

# =-=-=-= Moose Detect =-=-=-=
execute if data storage player_detect a.response[{name:"Legitermoose"}] positioned 9 64 -19 run function code:playerdetect/moose/_found
execute unless data storage player_detect a.response[{name:"Legitermoose"}] positioned 9 64 -19 run function code:playerdetect/moose/_notfound

# =-=-=-= PolishKrowa Detect =-=-=-=
execute if data storage player_detect a.response[{name:"PolishKrowa"}] positioned 9 64 -19 run function code:playerdetect/polishkrowa/_found
execute unless data storage player_detect a.response[{name:"PolishKrowa"}] positioned 9 64 -19 run function code:playerdetect/polishkrowa/_notfound

# =-=-=-= Arvelyx Detect =-=-=-=
execute if data storage player_detect a.response[{name:"Arvelyx"}] positioned 47 69 -44 run function code:playerdetect/arvelyx/_found
execute unless data storage player_detect a.response[{name:"Arvelyx"}] positioned 47 69 -44 run function code:playerdetect/arvelyx/_notfound