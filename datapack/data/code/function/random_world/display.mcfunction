execute store result score .is_blacklisted misc run function code:good_world/blacklist/check with storage api random
execute if score .is_blacklisted misc matches 1 run tellraw olaf_294 [{text:"⚠ ",color:red},{text:"Wᴏʀʟᴅ ᴡɪᴛʜ ID '",color:white},{storage:api,nbt:"random.world_uuid",interpret:1b,color:yellow},{text:"' ʜᴀꜱ ʙᴇᴇɴ ʙʟᴀᴄᴋʟɪꜱᴛᴇᴅ.",color:white}]
execute if score .is_blacklisted misc matches 2 run tellraw olaf_294 [{text:"⚠ ",color:red},{text:"Oᴡɴᴇʀ ᴡɪᴛʜ ID '",color:white},{storage:api,nbt:"random.owner_uuid",interpret:1b,color:yellow},{text:"' ʜᴀꜱ ʙᴇᴇɴ ʙʟᴀᴄᴋʟɪꜱᴛᴇᴅ.",color:white}]
execute if score .is_blacklisted misc matches 1..2 run return 0

$tellraw @a[tag=!info,distance=..10] [{text:"Rᴀɴᴅᴏᴍ Wᴏʀʟᴅ: Cʟɪᴄᴋ ",color:gray,click_event:{action:"run_command",command:"/world $(world_uuid)"},hover_event:{action:"show_text",value:{text:"Wᴏʀʟᴅ UUID: $(world_uuid)",color:green}}},{text:"[HERE]",color:gold},{text:" ᴛᴏ ᴘʟᴀʏ.\n  ",color:gray},{storage:api,nbt:"random.raw_name",interpret:1b}]

# Calculate Ratio
data modify storage api math set compute default float {type:div,left:{type:storage,storage:api,path:"random.votes"},right:{type:storage,storage:api,path:"random.visits"}}
data modify storage api math set string storage api math 0 -1
data modify storage api math set string storage api math 0 6

$execute unless data storage api random{version:"26.3"} run return run tellraw @a[tag=info,distance=..10] [{text:"Rᴀɴᴅᴏᴍ Wᴏʀʟᴅ: Cʟɪᴄᴋ ",color:gray,click_event:{action:"run_command",command:"/world $(world_uuid)"},hover_event:{action:"show_text",value:{text:"Wᴏʀʟᴅ UUID: $(world_uuid)",color:green}}},{text:"[HERE]",color:gold},{text:" ᴛᴏ ᴘʟᴀʏ.\n  ",color:gray},{storage:api,nbt:"random.raw_name",interpret:1b},{text:"\n  Vᴇʀꜱɪᴏɴ: ",color:"#888888"},{storage:api,nbt:"random.version",color:yellow,interpret:1b},"\n  ",{storage:api,nbt:"random.votes",plain:1b,color:green},{text:" ᴠᴏᴛᴇꜱ, ",color:gray},{storage:api,nbt:"random.visits",plain:1b,color:green},{text:" ᴠɪꜱɪᴛꜱ",color:gray},{text:" (ʀᴀᴛɪᴏ: ",color:gray},{storage:"api",nbt:"math",color:green,interpret:1b},{text:")",color:gray}]

$tellraw @a[tag=info,distance=..10] [{text:"Rᴀɴᴅᴏᴍ Wᴏʀʟᴅ: Cʟɪᴄᴋ ",color:gray,click_event:{action:"run_command",command:"/world $(world_uuid)"},hover_event:{action:"show_text",value:{text:"Wᴏʀʟᴅ UUID: $(world_uuid)",color:green}}},{text:"[HERE]",color:gold},{text:" ᴛᴏ ᴘʟᴀʏ.\n  ",color:gray},{storage:api,nbt:"random.raw_name",interpret:1b},{text:"\n  Vᴇʀꜱɪᴏɴ: ",color:"#888888"},{storage:api,nbt:"random.version",color:green,interpret:1b},"\n  ",{storage:api,nbt:"random.votes",plain:1b,color:green},{text:" ᴠᴏᴛᴇꜱ, ",color:gray},{storage:api,nbt:"random.visits",plain:1b,color:green},{text:" ᴠɪꜱɪᴛꜱ",color:gray},{text:" (ʀᴀᴛɪᴏ: ",color:gray},{storage:"api",nbt:"math",color:green,interpret:1b},{text:")",color:gray}]
