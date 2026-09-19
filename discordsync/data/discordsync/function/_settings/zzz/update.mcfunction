$data merge storage discordsync:data {data:{token:"$(token)",id:"$(id)",gid:"$(gid)",prev_id:"$(prev_id)",bm:"$(bm)",name_style:$(name_style)}}

data modify storage discordsync:data data._temp.a set string storage discordsync:data data.token 0 4
data modify storage discordsync:data data._temp.b set string storage discordsync:data data.token -4

execute if data storage discordsync:data {data:{name_style:1}} run data modify storage discordsync:data data._temp.name_style set value "Uꜱᴇʀɴᴀᴍᴇ"
execute if data storage discordsync:data {data:{name_style:2}} run data modify storage discordsync:data data._temp.name_style set value "Gʟᴏʙᴀʟ ɴᴀᴍᴇ"
    #execute if data storage discordsync:data {data:{name_style:3}} run data modify storage discordsync:data data._temp.name_style set value "ɴɪᴄᴋɴᴀᴍᴇ"

tellraw @s ["\n",{text:"👾 Dɪꜱᴄᴏʀᴅ",color:"#9999ff"},{text:"Sʏɴᴄ",color:"#7777ff"},{text:"\n  » ",color:gray},{text:"ᴛᴏᴋᴇɴ ꜱᴇᴛ ᴛᴏ ",color:gray},{storage:"discordsync:data",nbt:data._temp.a,interpret:1b},"...",\
{storage:"discordsync:data",nbt:data._temp.b,interpret:1b},{text:"\n  » ",color:gray},{text:'ꜱᴇᴛ ᴄʜᴀɴɴᴇʟ ɪᴅ ᴛᴏ ',color:gray},{storage:"discordsync:data",nbt:data.id,interpret:1b,color:gold},\
{text:"\n  » ",color:gray},{text:'ꜱᴇᴛ ɢᴜɪʟᴅ ɪᴅ ᴛᴏ ',color:gray},{storage:"discordsync:data",nbt:data.gid,interpret:1b,color:gold},\
{text:"\n  » ",color:gray},{text:'ꜱᴇᴛ ʟᴀꜱᴛ ᴍᴇꜱꜱᴀɢᴇ ɪᴅ ᴛᴏ ',color:gray},{storage:"discordsync:data",nbt:data.prev_id,interpret:1b,color:gold},\
{text:"\n  » ",color:gray},{text:'ꜱᴇᴛ ʙᴏᴛᴍᴀꜱᴛᴇʀ ɪᴅ ᴛᴏ ',color:gray},{storage:"discordsync:data",nbt:data.bm,interpret:1b,color:gold},\
{text:"\n  » ",color:gray},{text:'ꜱᴇᴛ ɴᴀᴍᴇ ᴛʏᴘᴇ ᴛᴏ ',color:gray},{storage:"discordsync:data",nbt:data._temp.name_style,interpret:1b,color:gold}]

data remove storage discordsync:data data._temp