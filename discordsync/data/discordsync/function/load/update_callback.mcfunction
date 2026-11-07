execute store result score .avaiable_version ds.config run data get storage discordsync:data temp.version.response.integer

# if update avaiable
execute if score .avaiable_version ds.config > .version ds.config if score .notification_sent ds.config matches 0 as @a[tag=is_dev] run tellraw @s [{text:"",click_event:{action:open_url,url:"https://github.com/olaf294/Mosse-Worlds/tree/main/discordsync"}},\
 {text:"👾 Dɪꜱᴄᴏʀᴅ",color:"#9999ff"},{text:"Sʏɴᴄ",color:"#7777ff"},{text:" » ",color:gray},{text:"ᴀɴ ᴜᴘᴅᴀᴛᴇ ɪꜱ ᴀᴠᴀɪᴀʙʟᴇ: ",color:yellow},\
 {storage:"discordsync:data",nbt:"temp.version.response.version",interpret:1b,color:green},{text:"\nᴄʟɪᴄᴋ ʜᴇʀᴇ ᴛᴏ ᴅᴏᴡɴʟᴏᴀᴅ ᴛʜᴇ ɴᴇᴡᴇꜱᴛ ᴠᴇʀꜱɪᴏɴ.: ",color:yellow}]

execute if score .avaiable_version ds.config > .version ds.config if score .notification_sent ds.config matches 0 as @a[tag=is_dev] run scoreboard players set .notification_sent ds.config 1

# if updated: reset notification
execute if score .avaiable_version ds.config = .version ds.config run scoreboard players set .notification_sent ds.config 0