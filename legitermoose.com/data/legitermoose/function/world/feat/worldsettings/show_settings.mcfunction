execute unless score @s worldsettings matches 1 run function legitermoose:world/feat/worldsettings/change_settings with storage legitermoose:temp settings

tellraw @s [{text:"--- ",color:green,underlined:0b},{text:"Wᴏʀʟᴅ Sᴇᴛᴛɪɴɢꜱ",color:green,underlined:1b},{text:" ---",color:green,underlined:0b}]

# Whitelist
$execute if data storage legitermoose:worlds worlds[{world_id:$(world_id)}].settings{whitelist:0b} run tellraw @s [{text:"Wʜɪᴛᴇʟɪꜱᴛ: ",color:gray},{text:"ꜰᴀʟꜱᴇ",color:red,click_event:{action:run_command,command:"/trigger worldsettings set 2"},hover_event:{action:show_text,value:{text:"Click to turn Whitelist on."}}}]
$execute if data storage legitermoose:worlds worlds[{world_id:$(world_id)}].settings{whitelist:1b} run tellraw @s [{text:"Wʜɪᴛᴇʟɪꜱᴛ: ",color:gray},{text:"ᴛʀᴜᴇ",color:green,click_event:{action:run_command,command:"/trigger worldsettings set 3"},hover_event:{action:show_text,value:{text:"Click to turn Whitelist off."}}}]

# Default Game Mode
$execute if data storage legitermoose:gm worlds[{id:$(world_id),default:0}] run tellraw @s [{text:"Dᴇꜰᴀᴜʟᴛ ɢᴀᴍᴇ ᴍᴏᴅᴇ: ",color:gray},{text:"ꜱᴜʀᴠɪᴠᴀʟ",color:yellow,click_event:{action:run_command,command:"/trigger worldsettings set 10"}}]
$execute if data storage legitermoose:gm worlds[{id:$(world_id),default:1}] run tellraw @s [{text:"Dᴇꜰᴀᴜʟᴛ ɢᴀᴍᴇ ᴍᴏᴅᴇ: ",color:gray},{text:"ᴄʀᴇᴀᴛɪᴠᴇ",color:yellow,click_event:{action:run_command,command:"/trigger worldsettings set 10"}}]
$execute if data storage legitermoose:gm worlds[{id:$(world_id),default:2}] run tellraw @s [{text:"Dᴇꜰᴀᴜʟᴛ ɢᴀᴍᴇ ᴍᴏᴅᴇ: ",color:gray},{text:"ᴀᴅᴠᴇɴᴛᴜʀᴇ",color:yellow,click_event:{action:run_command,command:"/trigger worldsettings set 10"}}]
$execute if data storage legitermoose:gm worlds[{id:$(world_id),default:3}] run tellraw @s [{text:"Dᴇꜰᴀᴜʟᴛ ɢᴀᴍᴇ ᴍᴏᴅᴇ: ",color:gray},{text:"ꜱᴘᴇᴄᴛᴀᴛᴏʀ",color:yellow,click_event:{action:run_command,command:"/trigger worldsettings set 10"}}]


tellraw @s [{text:"Cʜᴀɴɢᴇ Wᴏʀʟᴅ Nᴀᴍᴇ: ",color:gray,underlined:0b},{text:"ᴄʟɪᴄᴋ ʜᴇʀᴇ",color:green,underlined:1b,click_event:{action:run_command,command:"/trigger worldsettings set 4"}}]
tellraw @s [{text:"Cʜᴀɴɢᴇ Wᴏʀʟᴅ Iᴄᴏɴ: ",color:gray,underlined:0b},{text:"ᴄʟɪᴄᴋ ʜᴇʀᴇ",color:green,underlined:1b,click_event:{action:run_command,command:"/trigger worldsettings set 5"}}]

tellraw @s [{text:"Mᴀɴᴀɢᴇ ᴡʜɪᴛᴇʟɪꜱᴛᴇᴅ ᴘʟᴀʏᴇʀꜱ: ",color:gray,underlined:0b},{text:"ᴄʟɪᴄᴋ ʜᴇʀᴇ",color:green,underlined:1b,click_event:{action:run_command,command:"/trigger worldsettings set 6"}}]
tellraw @s [{text:"Mᴀɴᴀɢᴇ ᴡᴏʀʟᴅ ᴇᴅɪᴛᴏʀꜱ: ",color:gray,underlined:0b},{text:"ᴄʟɪᴄᴋ ʜᴇʀᴇ",color:green,underlined:1b,click_event:{action:run_command,command:"/trigger worldsettings set 7"}}]
tellraw @s [{text:"Mᴀɴᴀɢᴇ Aᴅᴍɪɴꜱ: ",color:gray,underlined:0b},{text:"ᴄʟɪᴄᴋ ʜᴇʀᴇ",color:green,underlined:1b,click_event:{action:run_command,command:"/trigger worldsettings set 8"}}]
tellraw @s [{text:"Mᴀɴᴀɢᴇ Dᴇᴠꜱ: ",color:gray,underlined:0b},{text:"ᴄʟɪᴄᴋ ʜᴇʀᴇ",color:green,underlined:1b,click_event:{action:run_command,command:"/trigger worldsettings set 9"}}]