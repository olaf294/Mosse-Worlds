$tellraw @a[tag=!info,distance=..10] [{text:" - - - - - - - - - - - - - - - - ",color:gray},{text:"\nRᴀɴᴅᴏᴍ Wᴏʀʟᴅ: Cʟɪᴄᴋ ",color:gray},{text:"[HERE]",color:gold,click_event:{action:"run_command",command:"/world $(world_uuid)"},hover_event:{action:"show_text",value:{text:"Wᴏʀʟᴅ UUID: $(world_uuid)",color:green}}},{text:" ᴛᴏ ᴘʟᴀʏ.",color:gray},\
"\n  ",{storage:api,nbt:"random.response.raw_name",interpret:1b}]

execute store result score .votes misc run data get storage api random.response.votes
execute store result score .visits misc run data get storage api random.response.visits

# Calculate Ratio
execute store result score .votes2 misc run data get storage api random.response.votes
scoreboard players operation .votes2 misc *= 10000 numbers
execute store result storage api math float 0.0001 run scoreboard players operation .votes2 misc /= .visits misc

$tellraw @a[tag=info,distance=..10] [{text:" - - - - - - - - - - - - - - - - ",color:gray},{text:"\nRᴀɴᴅᴏᴍ Wᴏʀʟᴅ: Cʟɪᴄᴋ ",color:gray},{text:"[HERE]",color:gold,click_event:{action:"run_command",command:"/world $(world_uuid)"},hover_event:{action:"show_text",value:{text:"Wᴏʀʟᴅ UUID: $(world_uuid)",color:green}}},{text:" ᴛᴏ ᴘʟᴀʏ.",color:gray},\
"\n  ",{storage:api,nbt:"random.response.raw_name",interpret:1b},{text:"\n  Vᴇʀꜱɪᴏɴ: ",color:"#888888"},{storage:api,nbt:"random.response.version",interpret:1b},"\n  ",\
{score:{name:".votes",objective:misc},color:green},{text:" ᴠᴏᴛᴇꜱ, ",color:gray},{score:{name:".visits",objective:misc},color:green},{text:" ᴠɪꜱɪᴛꜱ",color:gray},{text:" (ʀᴀᴛɪᴏ: ",color:gray},{storage:"api",nbt:"math",color:green},{text:")",color:gray}]