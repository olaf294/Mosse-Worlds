$data merge storage discordsync:data {data:{token:"$(token)",id:"$(id)",gid:"$(gid)",prev_id:"$(prev_id)",bm:"$(bm)"}}

data modify storage discordsync:data data._token.a set string storage discordsync:data data.token 0 4
data modify storage discordsync:data data._token.b set string storage discordsync:data data.token -4

tellraw @s ["\n",{text:"👾 Dɪꜱᴄᴏʀᴅ",color:"#9999ff"},{text:"Sʏɴᴄ",color:"#7777ff"},{text:"\n  » ",color:gray},{text:"ᴛᴏᴋᴇɴ ꜱᴇᴛ ᴛᴏ ",color:gray},{storage:"discordsync:data",nbt:data._token.a,interpret:1b},"...",\
{storage:"discordsync:data",nbt:data._token.b,interpret:1b},{text:"\n  » ",color:gray},{text:'ꜱᴇᴛ ᴄʜᴀɴɴᴇʟ ɪᴅ ᴛᴏ ',color:gray},{storage:"discordsync:data",nbt:data.id,interpret:1b,color:gold},\
{text:"\n  » ",color:gray},{text:'ꜱᴇᴛ ɢᴜɪʟᴅ ɪᴅ ᴛᴏ ',color:gray},{storage:"discordsync:data",nbt:data.gid,interpret:1b,color:gold},\
{text:"\n  » ",color:gray},{text:'ꜱᴇᴛ ʟᴀꜱᴛ ᴍᴇꜱꜱᴀɢᴇ ɪᴅ ᴛᴏ ',color:gray},{storage:"discordsync:data",nbt:data.prev_id,interpret:1b,color:gold},\
{text:"\n  » ",color:gray},{text:'ꜱᴇᴛ ʙᴏᴛᴍᴀꜱᴛᴇʀ ɪᴅ ᴛᴏ ',color:gray},{storage:"discordsync:data",nbt:data.bm,interpret:1b,color:gold}]

data remove storage discordsync:data data._token