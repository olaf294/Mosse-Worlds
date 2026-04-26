scoreboard objectives add legitermoose.gmc_time dummy {text:"GMC Time",color:gray}
scoreboard objectives add legitermoose.misc dummy
scoreboard objectives add legitermoose.temp dummy
scoreboard objectives add legitermoose.tp_cd dummy
scoreboard objectives add worldid dummy
scoreboard objectives add previd dummy
scoreboard objectives add legitermoose.rank dummy
scoreboard objectives add legitermoose.gamemode dummy
scoreboard objectives add legitermoose.world_slots dummy

scoreboard objectives add join custom:leave_game
scoreboard objectives add leave custom:leave_game

# UI Logic
scoreboard objectives add page dummy
scoreboard objectives add time_since_open dummy
scoreboard objectives add ui dummy

scoreboard objectives add play trigger
scoreboard objectives add vote trigger
scoreboard objectives add lobby trigger
scoreboard objectives add fly trigger
scoreboard objectives add worldsettings trigger
scoreboard objectives add find trigger

scoreboard objectives add code trigger
scoreboard objectives add reload trigger

scoreboard objectives add worldsearch trigger
scoreboard objectives add playersearch trigger

forceload add 990 10
execute if loaded 1000 64 0 run function legitermoose:load/spawn

team add 0_mosse {text:"ᴍᴏꜱꜱᴇ",color:"#ff00ff"}
team modify 0_mosse color light_purple
team modify 0_mosse prefix [{text:"ᴍᴏꜱꜱᴇ",color:"#ff00ff"},{text:" | ",color:dark_gray}]

team add A_adnim {text:"ᴀᴅɴɪᴍ",color:"#ff0033"}
team modify A_adnim color dark_red
team modify A_adnim prefix [{text:"ᴀᴅɴɪᴍ",color:"#ff0033"},{text:" | ",color:dark_gray}]

team add M_mood {text:"ᴍᴏᴏᴅ",color:"#1fff0f"}
team modify M_mood color green
team modify M_mood prefix [{text:"ᴍᴏᴏᴅ",color:"#1fff0f"},{text:" | ",color:dark_gray}]


#function legitermoose:world_browser/new_maybe/refresh


tellraw @a[tag=is_admin] [{text:"ʟᴇɢɪᴛᴇʀᴍᴏᴏꜱᴇ.ᴄᴏᴍ ʟᴏᴀᴅᴇᴅ!",color:gray}]




#   edit name <gradient:gold:yellow><shadow:#ff00007f>M<shadow:#ff0f007f>o<shadow:#ff1f007f>s<shadow:#ff2e007f>s<shadow:#ff3e007f>e <shadow:#ff5d007f>W<shadow:#ff6c007f>o<shadow:#ff7c007f>r<shadow:#ff8b007f>l<shadow:#ff9b007f>d<yellow><shadow:gold:.5>s

#   edit description <green>Jᴏɪɴ </green><u><#3366ff>ʟᴇɢɪᴛᴇʀᴍᴏᴏꜱᴇ.ᴄᴏᴍ</u><green> ᴛᴏᴅᴀʏ! </green><br><green>ᴍᴇꜱꜱɪɴɢ ᴡɪᴛʜ <u><gold>/ʜᴛᴛᴘ</u> & ᴍᴏʀᴇ!
#   edit description <gradient:#00cc00:green>Jᴏɪɴ </gradient><u><gradient:#3366ff:blue:#3311dd>ʟᴇɢɪᴛᴇʀᴍᴏᴏꜱᴇ.ᴄᴏᴍ</u><gradient:green:#00cc00> ᴛᴏᴅᴀʏ! </gradient><br><green>ᴍᴇꜱꜱɪɴɢ ᴡɪᴛʜ <u><gold>/ʜᴛᴛᴘ</u> & ᴍᴏʀᴇ!