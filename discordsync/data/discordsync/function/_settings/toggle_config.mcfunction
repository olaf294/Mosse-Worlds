## Cycle Config
# backup current config
data modify storage discordsync:data temp.data_secondary set from storage discordsync:data data

# load from secondary
data modify storage discordsync:data data set from storage discordsync:data data_secondary

# override the secondary from the backup
data modify storage discordsync:data data_secondary set from storage discordsync:data temp.data_secondary

data remove storage discordsync:data temp.data_secondary


## Notify
# ᴅᴇꜰᴀᴜʟᴛ
execute if data storage discordsync:data {data:{mode:"default"}} run tellraw @s ["",{text:"👾 Dɪꜱᴄᴏʀᴅ",color:"#9999ff"},{text:"Sʏɴᴄ",color:"#7777ff"},{text:" » ",color:gray},{text:"Tᴏɢɢʟᴇᴅ ᴄᴏɴꜰɪɢ ᴛᴏ "},{text:"ᴅᴇꜰᴀᴜʟᴛ",color:yellow,underlined:1b},"."]

# ᴅᴇᴠ
execute if data storage discordsync:data {data:{mode:"dev"}} run tellraw @s ["",{text:"👾 Dɪꜱᴄᴏʀᴅ",color:"#9999ff"},{text:"Sʏɴᴄ",color:"#7777ff"},{text:" » ",color:gray},{text:"Tᴏɢɢʟᴇᴅ ᴄᴏɴꜰɪɢ ᴛᴏ "},{text:"ᴅᴇᴠ",color:dark_aqua,underlined:1b},"."]