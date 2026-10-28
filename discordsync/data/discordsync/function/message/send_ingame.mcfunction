## Message Processing
function discordsync:message/process_style


## Return if user is muted
$execute if data storage discordsync:data muted[{id:"$(id)"}] run return run tellraw @a[tag=is_admin] [{text:"  ",hover_event:{action:show_text,value:[{storage:"discordsync:data",nbt:cm.time,interpret:1b,color:gray},{text:" UTC",color:gray},\
 {text:"\n🔔",strikethrough:1b,color:gold},{text:" Mᴜᴛᴇᴅ ᴍᴇꜱꜱᴀɢᴇ. Oɴʟʏ ᴀᴅᴍɪɴꜱ ᴄᴀɴ ꜱᴇᴇ ᴛʜɪꜱ. ",color:white},{text:"🔔",strikethrough:1b,color:gold}]}},\
 {text:"🔔",strikethrough:1b,color:gold},{text:" ‹",color:"#3030aa"},{text:"@",color:"#6666aa"},{storage:"discordsync:data",nbt:cm.name,interpret:1b,color:"#6666aa"},{text:"› ",color:"#3030aa"},\
 {storage:"discordsync:data",nbt:cm.att,interpret:1b},{storage:"discordsync:data",nbt:cm.modifier,interpret:1b},{storage:"discordsync:data",nbt:cm.content,interpret:1b,color:"#909090"}]


## Style 1 - Modern
tellraw @a[scores={ds.style=1}] \
[{text:"  ",hover_event:{action:show_text,value:[{storage:"discordsync:data",nbt:cm.time,interpret:1b,color:gray},{text:" UTC",color:gray},\
 {text:"\nTʜɪꜱ ɪꜱ ᴀ ",color:white},{text:"Dɪꜱᴄᴏʀᴅ",color:"#9999ff"},{text:"Sʏɴᴄ",color:"#7070ff"}, {text:" ᴍᴇꜱꜱᴀɢᴇ!",color:white}]}},{text:"» ",color:gray},\
 {text:"‹",color:"#7070ff"},{text:"@",color:"#aaaaff"},{storage:"discordsync:data",nbt:cm.name,interpret:1b,color:"#aaaaff"},{text:"› ",color:"#7070ff"},\
 {storage:"discordsync:data",nbt:cm.att,interpret:1b},{storage:"discordsync:data",nbt:cm.modifier,interpret:1b},{storage:"discordsync:data",nbt:cm.content,interpret:1b}]


## Style 2 - Vanilla
tellraw @a[scores={ds.style=2}] \
[{text:"<",hover_event:{action:show_text,value:[{storage:"discordsync:data",nbt:cm.time,interpret:1b,color:gray},{text:" UTC",color:white},\
 {text:"\nTʜɪꜱ ɪꜱ ᴀ ",color:white},{text:"Dɪꜱᴄᴏʀᴅ",color:"#9999ff"},{text:"Sʏɴᴄ",color:"#7070ff"}, {text:" ᴍᴇꜱꜱᴀɢᴇ!",color:white}]},color:white},\
 {text:"@",color:"#9999ff"},{storage:"discordsync:data",nbt:cm.name,interpret:1b,color:"#9999ff"},{text:"> ",color:white},\
 {storage:"discordsync:data",nbt:cm.att,interpret:1b},{storage:"discordsync:data",nbt:cm.modifier,interpret:1b},{storage:"discordsync:data",nbt:cm.content,interpret:1b}]


## Modify message attributes to classic styles
execute if data storage discordsync:data cm.att run data modify storage discordsync:data cm.att set value \
 {text:"[Attachment Included]",color:blue,click_event:{action:open_url,url:""},hover_event:{action:show_text,value:"Cʟɪᴄᴋ ᴛᴏ ᴠɪᴇᴡ ᴀᴛᴛᴀᴄʜᴍᴇɴᴛ."},extra:[{text:" ",underlined:0b}]}
execute if data storage discordsync:data cm.attachments[0] unless data storage discordsync:data cm.attachments[1] run data modify storage discordsync:data cm.att.click_event.url set from storage discordsync:data cm.attachments[0].url
execute if data storage discordsync:data cm.attachments[1] run function discordsync:message/set_message_link with storage discordsync:data data

# Modify reply, pin and forward style
execute if data storage discordsync:data cm.message_reference{type:0} run data modify storage discordsync:data cm.modifier set value {text:"[Reply]",color:"#dd8800",extra:[" "]}
execute if data storage discordsync:data {cm:{type:6}} run data modify storage discordsync:data cm.modifier set value {text:"[Pinned a message]",color:"#cc2244",extra:[" "]}
execute if data storage discordsync:data {cm:{type:18}} run data modify storage discordsync:data cm.modifier set value {text:"[Created a thread]",color:"#aaaa88",extra:[" "]}
execute if data storage discordsync:data cm.message_reference{type:1} run data modify storage discordsync:data cm.modifier set value {text:"[Forwarded message]",color:"#888888",extra:[" "]}


## Style 3 - Lobby (LegitiDevs)
tellraw @a[scores={ds.style=3}] \
[{text:"",hover_event:{action:show_text,value:[{storage:"discordsync:data",nbt:cm.time,interpret:1b,color:gray},{text:" UTC",color:white},\
 {text:"\nTʜɪꜱ ɪꜱ ᴀ ",color:white},{text:"Dɪꜱᴄᴏʀᴅ",color:"#9999ff"},{text:"Sʏɴᴄ",color:"#7070ff"}, {text:" ᴍᴇꜱꜱᴀɢᴇ!",color:white}]},color:white},\
 {text:"ᴅɪsᴄᴏʀᴅ ",color:blue,bold:1b},{storage:"discordsync:data",nbt:cm.name,interpret:1b,color:yellow},{text:": ",color:dark_gray},\
 {storage:"discordsync:data",nbt:cm.modifier,interpret:1b},{storage:"discordsync:data",nbt:cm.content,interpret:1b},{storage:"discordsync:data",nbt:cm.att,interpret:1b}]


## Style 4 - ChatSync (sea4_18)
tellraw @a[scores={ds.style=4}] \
[{text:"",hover_event:{action:show_text,value:[{storage:"discordsync:data",nbt:cm.time,interpret:1b,color:gray},{text:" UTC",color:white},\
 {text:"\nTʜɪꜱ ɪꜱ ᴀ ",color:white},{text:"Dɪꜱᴄᴏʀᴅ",color:"#9999ff"},{text:"Sʏɴᴄ",color:"#7070ff"}, {text:" ᴍᴇꜱꜱᴀɢᴇ!",color:white}]},color:white},\
 {text:"[Discord] ",color:blue},{storage:"discordsync:data",nbt:cm.name,interpret:1b,color:white},{text:": ",color:white},\
 {storage:"discordsync:data",nbt:cm.modifier,interpret:1b},{storage:"discordsync:data",nbt:cm.content,interpret:1b},{storage:"discordsync:data",nbt:cm.att,interpret:1b}]


## Style 5 - Lobby (normal chat)
tellraw @a[scores={ds.style=5}] \
[{text:"",hover_event:{action:show_text,value:[{storage:"discordsync:data",nbt:cm.time,interpret:1b,color:gray},{text:" UTC",color:white},\
 {text:"\nTʜɪꜱ ɪꜱ ᴀ ",color:white},{text:"Dɪꜱᴄᴏʀᴅ",color:"#9999ff"},{text:"Sʏɴᴄ",color:"#7070ff"}, {text:" ᴍᴇꜱꜱᴀɢᴇ!",color:white}]},color:white},\
 {storage:"discordsync:data",nbt:cm.name,interpret:1b,color:"#9999ff"},{text:": ",color:dark_gray},\
 {storage:"discordsync:data",nbt:cm.att,interpret:1b},{storage:"discordsync:data",nbt:cm.modifier,interpret:1b},{storage:"discordsync:data",nbt:cm.content,interpret:1b}]
