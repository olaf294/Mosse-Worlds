scoreboard players set .globaltimer misc 0


# General Status Message
execute if data storage player_detect {a:{status_code:200}} run tellraw @a[tag=is_admin,tag=!ignore] [{text:"(API) Rᴇꜱᴘᴏɴꜱᴇ: ",color:gray,hover_event:{action:show_text,value:"API - Detect Players"}},{storage:player_detect,nbt:"a.status_code",color:dark_green}]
execute unless data storage player_detect {a:{status_code:200}} run function code:playerdetect/_admin_error

# =-=-=-= Error Handling =-=-=-=
execute if data storage player_detect {a:{status_code:500}} positioned 9 64 -19 run return run function code:playerdetect/_error
execute if data storage player_detect {a:{status_code:501}} positioned 9 64 -19 run return run function code:playerdetect/_error
execute if data storage player_detect {a:{status_code:502}} positioned 9 64 -19 run return run function code:playerdetect/_error
execute if data storage player_detect {a:{status_code:503}} positioned 9 64 -19 run return run function code:playerdetect/_error

# =-=-=-= Player Detect =-=-=-=
scoreboard players add .total requests 1
scoreboard players add .player_detect requests 1

# =-=-=-= Logbog Detect =-=-=-=
execute if data storage player_detect a.response[{name:"Logbog"}] positioned 47 69 -36 run function code:playerdetect/logbog/_found
execute unless data storage player_detect a.response[{name:"Logbog"}] positioned 47 69 -36 run function code:playerdetect/logbog/_notfound

# =-=-=-= Moose Detect =-=-=-=
execute if data storage player_detect a.response[{name:"Legitermoose"}] positioned 9 64 -19 run function code:playerdetect/moose/_found
execute unless data storage player_detect a.response[{name:"Legitermoose"}] positioned 9 64 -19 run function code:playerdetect/moose/_notfound

# =-=-=-= mmmmmaaaaaxxxxx Detect =-=-=-=
execute if data storage player_detect a.response[{name:"mmmmmaaaaaxxxxx"}] positioned 47 69 -28 run function code:playerdetect/max/_found
execute unless data storage player_detect a.response[{name:"mmmmmaaaaaxxxxx"}] positioned 47 69 -28 run function code:playerdetect/max/_notfound

# =-=-=-= PolishKrowa Detect =-=-=-=
execute if data storage player_detect a.response[{name:"PolishKrowa"}] positioned 9 64 -19 run function code:playerdetect/polishkrowa/_found
execute unless data storage player_detect a.response[{name:"PolishKrowa"}] positioned 9 64 -19 run function code:playerdetect/polishkrowa/_notfound

# =-=-=-= Arvelyx Detect =-=-=-=
execute if data storage player_detect a.response[{name:"Arvelyx"}] positioned 47 69 -44 run function code:playerdetect/arvelyx/_found
execute unless data storage player_detect a.response[{name:"Arvelyx"}] positioned 47 69 -44 run function code:playerdetect/arvelyx/_notfound

# =-=-=-= KooriKitsune38 Detect =-=-=-=
execute if data storage player_detect a.response[{name:"KooriKitsune38"}] positioned 47 69 -20 run function code:playerdetect/koori/_found
execute unless data storage player_detect a.response[{name:"KooriKitsune38"}] positioned 47 69 -20 run function code:playerdetect/koori/_notfound

# =-=-=-= T0rston Detect =-=-=-=
execute if data storage player_detect a.response[{name:"T0rston"}] positioned 47 69 -12 run function code:playerdetect/torston/_found
execute unless data storage player_detect a.response[{name:"T0rston"}] positioned 47 69 -12 run function code:playerdetect/torston/_notfound