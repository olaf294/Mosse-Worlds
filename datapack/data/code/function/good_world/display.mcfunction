playsound entity.player.levelup block @a[distance=..10,tag=!ignore] 0 64 0 0.8 0.8

$tellraw @a[tag=!info,distance=..10] [{text:" - - - - - - - - - - - - - - - - ",color:gray},{text:"\nRᴀɴᴅᴏᴍ GOOD Wᴏʀʟᴅ: Cʟɪᴄᴋ ",color:green},{text:"[HERE]",color:gold,click_event:{action:"run_command",command:"/world $(world_uuid)"},hover_event:{action:"show_text",value:{text:"Wᴏʀʟᴅ UUID: $(world_uuid)",color:green}}},{text:" ᴛᴏ ᴘʟᴀʏ.",color:green},\
"\n  ",{storage:api,nbt:"good_world.response.raw_name",interpret:1b}]

execute store result score .votes misc run data get storage api good_world.response.votes
execute store result score .visits misc run data get storage api good_world.response.visits

# Calculate Ratio
execute store result score .votes2 misc run data get storage api good_world.response.votes
scoreboard players operation .votes2 misc *= 10000 numbers
execute store result storage api math float 0.0001 run scoreboard players operation .votes2 misc /= .visits misc

$tellraw @a[tag=info,distance=..10] [{text:" - - - - - - - - - - - - - - - - ",color:gray},{text:"\nRᴀɴᴅᴏᴍ GOOD Wᴏʀʟᴅ: Cʟɪᴄᴋ ",color:green},{text:"[HERE]",color:gold,click_event:{action:"run_command",command:"/world $(world_uuid)"},hover_event:{action:"show_text",value:{text:"Wᴏʀʟᴅ UUID: $(world_uuid)",color:green}}},{text:" ᴛᴏ ᴘʟᴀʏ.",color:green},\
"\n  ",{storage:api,nbt:"good_world.response.raw_name",interpret:1b},{text:"\n  Vᴇʀꜱɪᴏɴ: ",color:"#888888"},{storage:api,nbt:"good_world.response.version",interpret:1b,color:gray},"\n  ",\
{score:{name:".votes",objective:misc},color:green},{text:" ᴠᴏᴛᴇꜱ, ",color:gray},{score:{name:".visits",objective:misc},color:green},{text:" ᴠɪꜱɪᴛꜱ",color:gray},{text:" (ʀᴀᴛɪᴏ: ",color:gray},{storage:"api",nbt:"math",color:green},{text:")",color:gray}]