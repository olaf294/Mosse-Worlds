$data merge storage discordsync:data {data:{token:"$(token)",webhook_url:"$(webhook_url)",id:"$(id)",gid:"$(gid)",prev_id:"$(prev_id)",bm:"$(bm)",name_style:$(name_style),parse_mm:$(parse_mm)}}
$data modify storage discordsync:data header set value {Content-Type: "application/json", Authorization: "Bot $(token)"}


data modify storage discordsync:data data._temp.a set string storage discordsync:data data.token 0 4
data modify storage discordsync:data data._temp.b set string storage discordsync:data data.token -4

data modify storage discordsync:data data._temp.c set string storage discordsync:data data.webhook_url -4

execute if data storage discordsync:data {data:{name_style:1}} run data modify storage discordsync:data data._temp.name_style set value "Uꜱᴇʀɴᴀᴍᴇ"
execute if data storage discordsync:data {data:{name_style:2}} run data modify storage discordsync:data data._temp.name_style set value "Gʟᴏʙᴀʟ ɴᴀᴍᴇ"
    #execute if data storage discordsync:data {data:{name_style:3}} run data modify storage discordsync:data data._temp.name_style set value "ɴɪᴄᴋɴᴀᴍᴇ"

execute if data storage discordsync:data {data:{parse_mm:0}} run data modify storage discordsync:data data._temp.parse_mm set value "ᴏꜰꜰ"
execute if data storage discordsync:data {data:{parse_mm:1}} run data modify storage discordsync:data data._temp.parse_mm set value "ʀᴇᴍᴏᴠᴇ ᴛᴀɢꜱ ᴏɴʟʏ"
execute if data storage discordsync:data {data:{parse_mm:2}} run data modify storage discordsync:data data._temp.parse_mm set value "ᴏɴ"

tellraw @s ["\n",{text:"👾 Dɪꜱᴄᴏʀᴅ",color:"#9999ff"},{text:"Sʏɴᴄ",color:"#7777ff"},\
{text:"\n  » ",color:gray},{text:"ᴛᴏᴋᴇɴ: ",color:gray},{storage:"discordsync:data",nbt:data._temp.a,interpret:1b},"…",{storage:"discordsync:data",nbt:data._temp.b,interpret:1b},\
{text:"\n  » ",color:gray},{text:'ᴡᴇʙʜᴏᴏᴋ ᴜʀʟ: ',color:gray},"…",{storage:"discordsync:data",nbt:data._temp.c,interpret:1b},\
{text:"\n  » ",color:gray},{text:'ᴄʜᴀɴɴᴇʟ ɪᴅ: ',color:gray},{storage:"discordsync:data",nbt:data.id,interpret:1b,color:gold},\
{text:"\n  » ",color:gray},{text:'ɢᴜɪʟᴅ ɪᴅ: ',color:gray},{storage:"discordsync:data",nbt:data.gid,interpret:1b,color:gold},\
{text:"\n  » ",color:gray},{text:'ʟᴀꜱᴛ ᴍᴇꜱꜱᴀɢᴇ ɪᴅ: ',color:gray},{storage:"discordsync:data",nbt:data.prev_id,interpret:1b,color:gold},\
{text:"\n  » ",color:gray},{text:'ʙᴏᴛᴍᴀꜱᴛᴇʀ ɪᴅ: ',color:gray},{storage:"discordsync:data",nbt:data.bm,interpret:1b,color:gold},\
{text:"\n  » ",color:gray},{text:'ɴᴀᴍᴇ ᴛʏᴘᴇ: ',color:gray},{storage:"discordsync:data",nbt:data._temp.name_style,interpret:1b,color:gold},\
{text:"\n  » ",color:gray},{text:'ᴘᴀʀꜱᴇ ᴍɪɴɪᴍᴇꜱꜱᴀɢᴇ: ',color:gray},{storage:"discordsync:data",nbt:data._temp.parse_mm,interpret:1b,color:gold}]

data remove storage discordsync:data data._temp