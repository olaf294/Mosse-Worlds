## Process timestamp
data modify storage discordsync:data cm.time set string storage discordsync:data cm.timestamp 11 19

## Process attachments
# ONE attachment
execute if data storage discordsync:data cm.attachments[0] unless data storage discordsync:data cm.attachments[1] run data modify storage discordsync:data cm.att set value \
    {text:"[ᴀᴛᴛᴀᴄʜᴍᴇɴᴛ]",color:"#99c3ff",underlined:1b,click_event:{action:open_url,url:""},hover_event:{action:show_text,value:"Cʟɪᴄᴋ ᴛᴏ ᴠɪᴇᴡ ᴀᴛᴛᴀᴄʜᴍᴇɴᴛ."},extra:[{text:" ",underlined:0b}]}
execute if data storage discordsync:data cm.attachments[0] unless data storage discordsync:data cm.attachments[1] run data modify storage discordsync:data cm.att.click_event.url set from storage discordsync:data cm.attachments[0].url

# MULTIPLE attachments
execute if data storage discordsync:data cm.attachments[1] run data modify storage discordsync:data cm.att set value \
    {text:"[ᴀᴛᴛᴀᴄʜᴍᴇɴᴛꜱ]",color:"#99c3ff",underlined:1b,click_event:{action:open_url,url:""},hover_event:{action:show_text,value:"Cʟɪᴄᴋ ᴛᴏ ᴠɪᴇᴡ ᴍᴇꜱꜱᴀɢᴇ."},extra:[{text:" ",underlined:0b}]}
execute if data storage discordsync:data cm.attachments[1] run function discordsync:message/set_message_link with storage discordsync:data data

# NO attachments 
execute unless data storage discordsync:data cm.attachments[] run data modify storage discordsync:data cm.att set value ""

## Process replies, pins and forwards
execute if data storage discordsync:data cm.message_reference{type:0} run data modify storage discordsync:data cm.modifier set value {text:"[ʀᴇᴘʟʏ]",color:"#dd8800",extra:[" "]}
execute if data storage discordsync:data {cm:{type:6}} run data modify storage discordsync:data cm.modifier set value {text:"[ᴘɪɴɴᴇᴅ ᴀ ᴍᴇꜱꜱᴀɢᴇ]",color:"#cc2244",extra:[" "]}
execute if data storage discordsync:data {cm:{type:18}} run data modify storage discordsync:data cm.modifier set value {text:"[ᴄʀᴇᴀᴛᴇᴅ ᴀ ᴛʜʀᴇᴀᴅ]",color:"#aaaa88",extra:[" "]}
execute if data storage discordsync:data cm.message_reference{type:1} run data modify storage discordsync:data cm.modifier set value {text:"[ꜰᴏʀᴡᴀʀᴅ]",color:"#888888",extra:[" "]}
execute unless data storage discordsync:data cm.message_reference.type run data modify storage discordsync:data cm.modifier set value ""

## Process name 
execute if data storage discordsync:data {data:{name_style:1}} run data modify storage discordsync:data cm.name set from storage discordsync:data cm.author.username
execute if data storage discordsync:data {data:{name_style:2}} run data modify storage discordsync:data cm.name set from storage discordsync:data cm.author.global_name