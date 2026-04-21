execute unless score @s worldsettings matches 1 run function legitermoose:world/feat/worldsettings/change_settings with storage legitermoose:temp settings

tellraw @s [{text:"Wᴏʀʟᴅ Sᴇᴛᴛɪɴɢꜱ",color:gray,underlined:1b}]

$execute if data storage legitermoose:worlds worlds[{world_id:$(world_id)}].settings{whitelist:0b} run tellraw @s [{text:"Wʜɪᴛᴇʟɪꜱᴛ: "},{text:"ꜰᴀʟꜱᴇ",color:red,click_event:{action:run_command,command:"/trigger worldsettings set 2"},hover_event:{action:show_text,value:{text:"Click to turn Whitelist on."}}}]
$execute if data storage legitermoose:worlds worlds[{world_id:$(world_id)}].settings{whitelist:1b} run tellraw @s [{text:"Wʜɪᴛᴇʟɪꜱᴛ: "},{text:"ᴛʀᴜᴇ",color:green,click_event:{action:run_command,command:"/trigger worldsettings set 3"},hover_event:{action:show_text,value:{text:"Click to turn Whitelist off."}}}]
