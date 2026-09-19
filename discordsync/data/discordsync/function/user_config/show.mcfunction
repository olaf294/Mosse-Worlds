execute if score @s ds.config matches 11 run function discordsync:user_config/change_style

execute unless score @s ds.style matches -2147483648..2147483647 run scoreboard players set @s ds.style 1
execute if score @s ds.style matches 1 run data modify storage discordsync:data temp.user_config.style set value {text:"ᴍᴏᴅᴇʀɴ",color:"#9999ff"}
execute if score @s ds.style matches 2 run data modify storage discordsync:data temp.user_config.style set value {text:"ᴠᴀɴɪʟʟᴀ",color:gray}
execute if score @s ds.style matches 3 run data modify storage discordsync:data temp.user_config.style set value {text:"ʟᴏʙʙʏ",color:blue,bold:1b,extra:[{text:" (ʟᴇɢɪᴛɪᴅᴇᴠꜱ)",color:yellow,bold:0b,underlined:0b}]}
execute if score @s ds.style matches 4 run data modify storage discordsync:data temp.user_config.style set value {text:"ᴄʜᴀᴛꜱʏɴᴄ",color:aqua,extra:[{text:" (ꜱᴇᴀ4_18)",color:dark_aqua,underlined:0b}]}

tellraw @s ["\n",{text:"👾 Dɪꜱᴄᴏʀᴅ",color:"#9999ff"},{text:"Sʏɴᴄ",color:"#7777ff"},{text:"\n  » ",color:gray},{text:"ᴍᴇꜱꜱᴀɢᴇ ꜱᴛʏʟᴇ: ",color:yellow},{storage:"discordsync:data",nbt:"temp.user_config.style",underlined:1b,interpret:1b,hover_event:{action:show_text,value:"Click to change your message style!"},click_event:{action:run_command,command:"/trigger ds.config set 11"}}]