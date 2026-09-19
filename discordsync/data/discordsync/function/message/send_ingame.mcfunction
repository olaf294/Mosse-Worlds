## Style 1 - Modern
tellraw @a[scores={ds.style=1}] \
[{text:"  ",hover_event:{action:show_text,value:[{storage:"discordsync:data",nbt:"cm.time",interpret:1b,color:gray},{text:" UTC",color:gray},\
 {text:"\nTʜɪꜱ ɪꜱ ᴀ ",color:white},{text:"Dɪꜱᴄᴏʀᴅ",color:"#9999ff"},{text:"Sʏɴᴄ",color:"#7070ff"}, {text:" ᴍᴇꜱꜱᴀɢᴇ!",color:white}]}},{text:"» ",color:gray},\
 {text:"‹",color:"#7070ff"},{text:"@",color:"#aaaaff"},{storage:"discordsync:data",nbt:"cm.name",interpret:1b,color:"#aaaaff"},{text:"› ",color:"#7070ff"},\
 {storage:"discordsync:data",nbt:cm.att,interpret:1b},{storage:"discordsync:data",nbt:cm.ment,interpret:1b},{storage:"discordsync:data",nbt:"cm.content",interpret:1b}]


## Style 2 - Vanilla
tellraw @a[scores={ds.style=2}] \
[{text:"<",hover_event:{action:show_text,value:[{storage:"discordsync:data",nbt:"cm.time",interpret:1b,color:gray},{text:" UTC",color:white},\
 {text:"\nTʜɪꜱ ɪꜱ ᴀ ",color:white},{text:"Dɪꜱᴄᴏʀᴅ",color:"#9999ff"},{text:"Sʏɴᴄ",color:"#7070ff"}, {text:" ᴍᴇꜱꜱᴀɢᴇ!",color:white}]},color:white},\
 {text:"@",color:"#9999ff"},{storage:"discordsync:data",nbt:"cm.name",interpret:1b,color:"#9999ff"},{text:"> ",color:white},\
 {storage:"discordsync:data",nbt:cm.att,interpret:1b},{storage:"discordsync:data",nbt:cm.ment,interpret:1b},{storage:"discordsync:data",nbt:"cm.content",interpret:1b}]


## Style 3 - Lobby (LegitiDevs)
execute if data storage discordsync:data cm.att run data modify storage discordsync:data cm.att set value \
 {text:" [Attachment Included]",color:blue,click_event:{action:open_url,url:""},hover_event:{action:show_text,value:"Cʟɪᴄᴋ ᴛᴏ ᴠɪᴇᴡ ᴀᴛᴛᴀᴄʜᴍᴇɴᴛ."}}

execute if data storage discordsync:data cm.attachments[0] unless data storage discordsync:data cm.attachments[1] run data modify storage discordsync:data cm.att.click_event.url set from storage discordsync:data cm.attachments[0].url
execute if data storage discordsync:data cm.attachments[1] run function discordsync:message/set_message_link with storage discordsync:data data

tellraw @a[scores={ds.style=3}] \
[{text:"",hover_event:{action:show_text,value:[{storage:"discordsync:data",nbt:"cm.time",interpret:1b,color:gray},{text:" UTC",color:white},\
 {text:"\nTʜɪꜱ ɪꜱ ᴀ ",color:white},{text:"Dɪꜱᴄᴏʀᴅ",color:"#9999ff"},{text:"Sʏɴᴄ",color:"#7070ff"}, {text:" ᴍᴇꜱꜱᴀɢᴇ!",color:white}]},color:white},\
 {text:"ᴅɪsᴄᴏʀᴅ ",color:blue,bold:1b},{storage:"discordsync:data",nbt:"cm.name",interpret:1b,color:yellow},{text:": ",color:dark_gray},\
 {storage:"discordsync:data",nbt:cm.ment,interpret:1b},{storage:"discordsync:data",nbt:"cm.content",interpret:1b},{storage:"discordsync:data",nbt:cm.att,interpret:1b}]


## Style 4 - ChatSync (sea4_18)
tellraw @a[scores={ds.style=4}] \
[{text:"",hover_event:{action:show_text,value:[{storage:"discordsync:data",nbt:"cm.time",interpret:1b,color:gray},{text:" UTC",color:white},\
 {text:"\nTʜɪꜱ ɪꜱ ᴀ ",color:white},{text:"Dɪꜱᴄᴏʀᴅ",color:"#9999ff"},{text:"Sʏɴᴄ",color:"#7070ff"}, {text:" ᴍᴇꜱꜱᴀɢᴇ!",color:white}]},color:white},\
 {text:"[Discord] ",color:blue},{storage:"discordsync:data",nbt:"cm.name",interpret:1b,color:white},{text:": ",color:white},\
 {storage:"discordsync:data",nbt:cm.ment,interpret:1b},{storage:"discordsync:data",nbt:"cm.content",interpret:1b},{storage:"discordsync:data",nbt:cm.att,interpret:1b}]
