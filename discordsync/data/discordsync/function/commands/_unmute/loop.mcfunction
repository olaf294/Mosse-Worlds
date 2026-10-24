$execute unless data storage discordsync:data muted[{id:"$(next)"}] run tellraw @a[tag=is_admin] \
[{text:"👾 Dɪꜱᴄᴏʀᴅ",color:"#9999ff"},{text:"Sʏɴᴄ",color:"#7777ff"},{text:" » ",color:gray},{text:'Uꜱᴇʀ ɪᴅ ',color:yellow},{storage:"discordsync:data",nbt:"temp.unmute.next",interpret:1b,color:gold},{text:' ɪꜱ ɴᴏᴛ ᴍᴜᴛᴇᴅ.',color:yellow}]

$execute if data storage discordsync:data muted[{id:"$(next)"}] run tellraw @a[tag=is_admin] \
[{text:"👾 Dɪꜱᴄᴏʀᴅ",color:"#9999ff"},{text:"Sʏɴᴄ",color:"#7777ff"},{text:" » ",color:gray},{text:'Uɴᴍᴜᴛɪɴɢ ᴜꜱᴇʀ ɪᴅ ',color:green},{storage:"discordsync:data",nbt:"temp.unmute.next",interpret:1b,color:yellow},{text:'.',color:green}]
$execute if data storage discordsync:data muted[{id:"$(next)"}] run data remove storage discordsync:data muted[{id:"$(next)"}]

# next in loop
data remove storage discordsync:data cm.mentions[0]
execute if data storage discordsync:data cm.mentions[0] run data modify storage discordsync:data temp.unmute.next set from storage discordsync:data cm.mentions[0].id
execute if data storage discordsync:data cm.mentions[0] run return run function discordsync:commands/_unmute/loop with storage discordsync:data temp.unmute
