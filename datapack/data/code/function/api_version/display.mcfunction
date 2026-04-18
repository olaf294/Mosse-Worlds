# If scraper is down but API is up:
execute unless data storage api version.response.scraper.version positioned 2 64 5 run return run tellraw @a[distance=..10] [{text:"\nAPI Vᴇʀꜱɪᴏɴ ɪɴꜰᴏ",underlined:1b,color:yellow},"\n\n",\
{text:"• ",color:white,underlined:0b},{text:"API ",color:aqua,underlined:0b},{text:"(ᴄᴜʀʀᴇɴᴛ): ",color:"#2b8b2b",underlined:0b},{text:"v",color:gray,underlined:0b},{storage:api,nbt:"version.response.version",color:gray,underlined:0b},"\n\n",\
{text:"• ",color:white,underlined:0b},{text:"Sᴄʀᴀᴘᴇʀ ",color:aqua,underlined:0b},{text:"(ᴄᴜʀʀᴇɴᴛ): ",color:"#2b8b2b",underlined:0b},{text:"Oꜰꜰʟɪɴᴇ",color:"#ff0000",underlined:0b}]

# If scraper is up
execute if data storage api version.response.scraper.version positioned 2 64 5 run return run tellraw @a[distance=..10] [{text:"\nAPI Vᴇʀꜱɪᴏɴ ɪɴꜰᴏ",underlined:1b,color:yellow},"\n\n",\
{text:"• ",color:white,underlined:0b},{text:"API ",color:aqua,underlined:0b},{text:"(ᴄᴜʀʀᴇɴᴛ): ",color:"#2b8b2b",underlined:0b},{text:"v",color:gray,underlined:0b},{storage:api,nbt:"version.response.version",color:gray,underlined:0b},"\n\n",\
{text:"• ",color:white,underlined:0b},{text:"Sᴄʀᴀᴘᴇʀ ",color:aqua,underlined:0b},{text:"(ᴄᴜʀʀᴇɴᴛ): ",color:"#2b8b2b",underlined:0b},{text:"v",color:gray,underlined:0b},{storage:api,nbt:"version.response.scraper.version",color:gray,underlined:0b}]