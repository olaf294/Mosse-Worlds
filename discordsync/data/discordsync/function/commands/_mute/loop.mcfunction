$execute if data storage discordsync:data muted[{id:"$(next)"}] run tellraw @a[tag=is_admin] \
[{text:"👾 Dɪꜱᴄᴏʀᴅ",color:"#9999ff"},{text:"Sʏɴᴄ",color:"#7777ff"},{text:" » ",color:gray},{text:'Uꜱᴇʀ ɪᴅ ',color:yellow},{storage:"discordsync:data",nbt:"temp.mute.next",interpret:1b,color:gold},{text:' ʜᴀꜱ ᴀʟʀᴇᴀᴅʏ ʙᴇᴇɴ ᴍᴜᴛᴇᴅ.',color:yellow}]

$execute unless data storage discordsync:data muted[{id:"$(next)"}] run tellraw @a[tag=is_admin] \
[{text:"👾 Dɪꜱᴄᴏʀᴅ",color:"#9999ff"},{text:"Sʏɴᴄ",color:"#7777ff"},{text:" » ",color:gray},{text:'Mᴜᴛɪɴɢ ᴜꜱᴇʀ ɪᴅ ',color:red},{storage:"discordsync:data",nbt:"temp.mute.next",interpret:1b,color:yellow},{text:'.',color:red}]
$execute unless data storage discordsync:data muted[{id:"$(next)"}] run data modify storage discordsync:data muted append value {id:"$(next)"}

# next in loop
data remove storage discordsync:data cm.mentions[0]
execute if data storage discordsync:data cm.mentions[0] run data modify storage discordsync:data temp.mute.next set from storage discordsync:data cm.mentions[0].id
execute if data storage discordsync:data cm.mentions[0] run return run function discordsync:commands/_mute/loop with storage discordsync:data temp.mute


# done with muting