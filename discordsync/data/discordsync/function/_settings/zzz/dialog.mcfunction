$dialog show @s \
{type:multi_action,title:[{text:"👾 Dɪꜱᴄᴏʀᴅ",color:"#9999ff"},{text:"Sʏɴᴄ",color:"#7777ff"}],inputs:[\
{type:text,key:"token",label:{text:"Bot Token",hover_event:{action:show_text,value:"Enter the token of the Discord Bot."}},width:300,max_length:80,initial:"$(token)"},\
{type:text,key:"id",label:{text:"Channel ID",hover_event:{action:show_text,value:"Enter the Channel ID to sync messages from."}},width:300,max_length:20,initial:"$(id)"},\
{type:text,key:"gid",label:{text:"Guild ID",hover_event:{action:show_text,value:"Enter the Guild ID (Server ID) to sync messages from."}},width:300,max_length:20,initial:"$(gid)"},\
{type:text,key:"prev_id",label:{text:"Last Message ID",hover_event:{action:show_text,value:"Enter the ID of the newest message in the sync channel."}},width:300,max_length:20,initial:"$(prev_id)"},\
{type:text,key:"bm",label:{text:"Botmaster Role ID",hover_event:{action:show_text,value:"Enter the Role ID for botmasters (users with higher permissions)."}},width:300,max_length:20,initial:"$(bm)"}],pause:0b,actions:[\
{label:{text:"ꜱᴀᴠᴇ ꜱᴇᴛᴛɪɴɢꜱ",color:green,bold:1b},tooltip:{text:"Cʟɪᴄᴋ ᴛᴏ ꜱᴀᴠᴇ ᴛʜᴇꜱᴇ ꜱᴇᴛᴛɪɴɢꜱ.",color:green},width:150,action:{type:"dynamic/run_command",template:"function discordsync:_settings/zzz/update {token:\"$(end)\"}"}},\
{label:{text:"ᴅɪꜱᴄᴀʀᴅ",color:red,bold:1b},tooltip:{text:"Cʟɪᴄᴋ ᴛᴏ ᴇxɪᴛ ᴡɪᴛʜᴏᴜᴛ ꜱᴀᴠɪɴɢ.",color:red},width:150}]}
data remove storage discordsync:data data.end