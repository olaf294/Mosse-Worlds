scoreboard players add .uninstall ads.config 1

execute as @a[tag=is_admin] at @s run playsound block.bell.use master @s ~ ~ ~ 2 1 1

execute if score .uninstall ads.config matches 1 run tellraw @a[tag=is_admin] ["\n",{text:"LᴇɢɪᴛɪAᴅꜱ ",color:yellow},{text:"» ",color:dark_gray},{text:"⚠",color:yellow,bold:0b},{text:" ᴡᴀʀɴɪɴɢ ",color:yellow,bold:1b},{text:"⚠\n",color:yellow,bold:0b},{text:"Yᴏᴜ ᴀʀᴇ ᴛʀʏɪɴɢ ᴛᴏ ᴜɴɪɴꜱᴛᴀʟʟ LᴇɢɪᴛɪAᴅꜱ.\nɪꜰ ʏᴏᴜ ᴅᴏ ɴᴏᴛ ᴋɴᴏᴡ ᴡʜᴀᴛ ʏᴏᴜ ᴀʀᴇ ᴅᴏɪɴɢ, ᴘʟᴇᴀꜱᴇ ʀᴜɴ ",color:red},{text:"/ʀᴇʟᴏᴀᴅ",click_event:{action:suggest_command,command:"/reload"},color:blue,underlined:1b,hover_event:{action:show_text,value:"Click to cancel uninstalling."}},{text:" ɴᴏᴡ.\n\n",color:red},{text:"ɪꜰ ʏᴏᴜ ᴡɪꜱʜ ᴛᴏ ᴘʀᴏᴄᴇᴇᴅ ᴡɪᴛʜ ᴅᴇʟᴇᴛɪᴏɴ, ʀᴜɴ ᴛʜɪꜱ ꜰᴜɴᴄᴛɪᴏɴ ᴀɢᴀɪɴ.",color:dark_red}]
execute if score .uninstall ads.config matches 1 run return fail
execute if score .uninstall ads.config matches 2 run tellraw @a[tag=is_admin] ["\n",{text:"LᴇɢɪᴛɪAᴅꜱ ",color:yellow},{text:"» ",color:dark_gray},{text:"⚠",color:yellow,bold:0b},{text:" ᴡᴀʀɴɪɴɢ ",color:yellow,bold:1b},{text:"⚠\n",color:yellow,bold:0b},{text:"Yᴏᴜ ᴀʀᴇ ᴛʀʏɪɴɢ ᴛᴏ ᴜɴɪɴꜱᴛᴀʟʟ LᴇɢɪᴛɪAᴅꜱ.\n\n",color:red},{text:"ᴛʜɪꜱ ɪꜱ ᴛʜᴇ ꜰɪɴᴀʟ ᴡᴀʀɴɪɴɢ ʙᴇꜰᴏʀᴇ ᴅᴇʟᴇᴛɪᴏɴ.\nɪꜰ ʏᴏᴜ ᴡɪꜱʜ ᴛᴏ ᴘʀᴏᴄᴇᴇᴅ, ʀᴜɴ ᴛʜɪꜱ ꜰᴜɴᴄᴛɪᴏɴ ᴀɢᴀɪɴ.",color:dark_red,bold:1b}]
execute if score .uninstall ads.config matches 2 run return fail

# Uninstall
tellraw @a[tag=is_admin] [{text:"LᴇɢɪᴛɪAᴅꜱ ",color:yellow},{text:"» ",color:dark_gray},{text:"ᴜɴɪɴꜱᴛᴀʟʟɪɴɢ... ᴘʟᴇᴀꜱᴇ ᴡᴀɪᴛ.",color:gray}]

function ads:zzz/_delete_all_data

tellraw @a[tag=is_admin] [{text:"LᴇɢɪᴛɪAᴅꜱ ",color:yellow},{text:"» ",color:dark_gray},{text:"ᴜɴɪɴꜱᴛᴀʟʟɪɴɢ ꜱᴜᴄᴄᴇꜱꜱꜰᴜʟ.",color:green},{text:"\nTᴏ ꜰᴜʟʟʏ ʀᴇᴍᴏᴠᴇ LᴇɢɪᴛɪAᴅꜱ, ᴘʟᴇᴀꜱᴇ ᴅᴇʟᴇᴛᴇ ᴛʜᴇ Dᴀᴛᴀᴘᴀᴄᴋ. Tᴏ ᴜᴘɢʀᴀᴅᴇ ᴛᴏ ᴀ ɴᴇᴡ ᴠᴇʀꜱɪᴏɴ, ᴘʟᴇᴀꜱᴇ ʀᴇᴘʟᴀᴄᴇ ᴛʜᴇ ᴠᴇʀꜱɪᴏɴ ᴏꜰ ᴛʜɪꜱ Dᴀᴛᴀᴘᴀᴄᴋ.",color:gray}]