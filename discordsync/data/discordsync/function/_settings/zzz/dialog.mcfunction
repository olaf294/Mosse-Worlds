$dialog show @s \
{type:multi_action,title:[{text:"👾 Dɪꜱᴄᴏʀᴅ",color:"#9999ff"},{text:"Sʏɴᴄ",color:"#7777ff"}],body:{type:plain_message,contents:[{text:"Cᴜʀʀᴇɴᴛ ᴍᴏᴅᴇ: ",color:gray,bold:1},{text:"$(mode)",color:aqua}]},inputs:[\
{type:text,key:"token",label:{text:"Bot Token",hover_event:{action:show_text,value:"Enter the token of the Discord Bot."}},width:300,max_length:80,initial:"$(token)"},\
{type:text,key:"webhook_url",label:{text:"Webhook URL",hover_event:{action:show_text,value:"Enter the URL for the Discord Webhook you wish to sync messages onto."}},width:300,max_length:175,initial:"$(webhook_url)"},\
{type:text,key:"id",label:{text:"Channel ID",hover_event:{action:show_text,value:"Enter the Channel ID to sync messages from."}},width:300,max_length:20,initial:"$(id)"},\
{type:text,key:"gid",label:{text:"Guild ID",hover_event:{action:show_text,value:"Enter the Guild ID (Server ID) to sync messages from."}},width:300,max_length:20,initial:"$(gid)"},\
{type:text,key:"prev_id",label:{text:"Last Message ID",hover_event:{action:show_text,value:"Enter the ID of the newest message in the sync channel."}},width:300,max_length:20,initial:"$(prev_id)"},\
{type:text,key:"bm",label:{text:"Botmaster Role ID",hover_event:{action:show_text,value:"Enter the Role ID for botmasters (users with higher permissions)."}},width:300,max_length:20,initial:"$(bm)"},\
{type:single_option,key:"name_style",width:300,label:"Name type",options:[{id:"1",display:"Username",initial:1},{id:"2",display:"Global Name"}]},\
{type:single_option,key:"parse_mm",width:300,label:"Parse MiniMessage",options:[{id:"0",display:"Off",initial:1},{id:"1",display:"Only remove tags"},{id:"2",display:"On"}]}],pause:0b,columns:2,actions:[\
{label:{text:"ꜱᴀᴠᴇ ꜱᴇᴛᴛɪɴɢꜱ",color:green,bold:1b},tooltip:{text:"Cʟɪᴄᴋ ᴛᴏ ꜱᴀᴠᴇ ᴛʜᴇꜱᴇ ꜱᴇᴛᴛɪɴɢꜱ.",color:green},width:150,action:{type:"dynamic/run_command",template:"function discordsync:_settings/zzz/update {token:\"$(end)}"}},\
{label:{text:"ᴅɪꜱᴄᴀʀᴅ",color:red,bold:1b},tooltip:{text:"Cʟɪᴄᴋ ᴛᴏ ᴇxɪᴛ ᴡɪᴛʜᴏᴜᴛ ꜱᴀᴠɪɴɢ.",color:red},width:150},\
{label:{text:"ᴛᴏɢɢʟᴇ ᴄᴏɴꜰɪɢ",color:yellow,bold:1b},tooltip:{text:"Cʟɪᴄᴋ ᴛᴏ ᴛᴏɢɢʟᴇ ᴛʜᴇ ᴀᴄᴛɪᴠᴇ ᴄᴏɴꜰɪɢ.",color:gold},width:300,action:{type:"run_command",command:"function discordsync:_settings/toggle_config"}},\
]}
data remove storage discordsync:data data.end