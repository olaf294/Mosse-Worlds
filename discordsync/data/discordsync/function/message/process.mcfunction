data modify storage discordsync:data cm set from storage discordsync:data messages.response[-1]

# Default message cutoff at 256 chars
data modify storage discordsync:data cm.content set string storage discordsync:data cm.content 0 256

data modify storage discordsync:data cm.command set string storage discordsync:data cm.content 0 1
execute if data storage discordsync:data {cm:{command:"!"}} run function discordsync:message/command

# If there is ONE attachment
execute if data storage discordsync:data cm.attachments[0] unless data storage discordsync:data cm.attachments[1] run data modify storage discordsync:data cm.att set value {text:"[ᴀᴛᴛᴀᴄʜᴍᴇɴᴛ] ",color:"#4466cc",click_event:{action:open_url,url:""},hover_event:{action:show_text,value:"Click to view attachment."}}
execute if data storage discordsync:data cm.attachments[0] unless data storage discordsync:data cm.attachments[1] run data modify storage discordsync:data cm.att.click_event.url set from storage discordsync:data cm.attachments[0].url

# If there are MULTIPLE attachments
execute if data storage discordsync:data cm.attachments[1] run data modify storage discordsync:data cm.att set value {text:"[ᴀᴛᴛᴀᴄʜᴍᴇɴᴛꜱ] ",color:"#4466cc",click_event:{action:open_url,url:""},hover_event:{action:show_text,value:"Click to view message."}}
execute if data storage discordsync:data cm.attachments[1] run function discordsync:message/set_message_link with storage discordsync:data data

# If there are no attachments 
execute unless data storage discordsync:data cm.attachments[] run data modify storage discordsync:data cm.att set value ""

# Broadcast the message
tellraw @a \
[{text:"  ",hover_event:{action:show_text,value:[{text:"This is a ",color:gray},{text:"Dɪꜱᴄᴏʀᴅ",color:"#9999ff"},{text:"Sʏɴᴄ",color:"#7070ff"}, {text:" message!",color:gray}]}},{text:"» ",color:gray},\
 {text:"‹",color:"#9999ff"},{text:"@",color:"#aaaaff"},{storage:"discordsync:data",nbt:"cm.author.username",interpret:1b,color:"#aaaaff"},{text:"› ",color:"#7070ff"},{storage:"discordsync:data",nbt:cm.att,interpret:1b},\
 {storage:"discordsync:data",nbt:"cm.content",interpret:1b}]