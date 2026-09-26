    # scoreboard objectives add legitermoose.gmc_time dummy {text:"GMC Time",color:gray}
scoreboard objectives add legitermoose.misc dummy
scoreboard objectives add legitermoose.temp dummy
scoreboard objectives add legitermoose.rank dummy
scoreboard objectives add legitermoose.gamemode dummy
scoreboard objectives add legitermoose.world_slots dummy
scoreboard objectives add legitermoose.mosse_points dummy [{text:"‹",color:gray},{text:"Ⓜ",color:gold},{text:"›",color:gray},{text:" Mᴏꜱꜱᴇ Pᴏɪɴᴛꜱ ",color:white,bold:1b},{text:"‹",color:gray},{text:"Ⓜ",color:gold},{text:"›",color:gray}]
scoreboard objectives modify legitermoose.mosse_points numberformat styled {color:"#ff7700"}
scoreboard objectives add worldid dummy
scoreboard objectives add previd dummy
scoreboard objectives add leave custom:leave_game

# UI Logic
scoreboard objectives add filter dummy
scoreboard objectives add page dummy
scoreboard objectives add time_since_open dummy
scoreboard objectives add ui dummy

scoreboard objectives add play trigger
scoreboard objectives add vote trigger
scoreboard objectives add lobby trigger
scoreboard objectives add fly trigger
scoreboard objectives add worldsettings trigger
scoreboard objectives add find trigger
scoreboard objectives add listall trigger

scoreboard objectives add code trigger
scoreboard objectives add reload trigger

scoreboard objectives add world trigger
scoreboard objectives add visit trigger

scoreboard objectives add gamemode trigger

forceload add 990 10
execute if loaded 1000 64 0 run function legitermoose:load/spawn

team add 0_mosse [{text:"ᴍ",color:"#FF44AA"},{text:"ᴏ",color:"#FF33BF"},{text:"ꜱ",color:"#FF22D5"},{text:"ꜱ",color:"#FF11EA"},{text:"ᴇ",color:"#FF00FF"}]
team modify 0_mosse color white
team modify 0_mosse prefix [{text:"ᴍ",color:"#FF44AA"},{text:"ᴏ",color:"#FF33BF"},{text:"ꜱ",color:"#FF22D5"},{text:"ꜱ",color:"#FF11EA"},{text:"ᴇ",color:"#FF00FF"},{text:" | ",color:gray}]

team add A_adnim {text:"ᴀᴅɴɪᴍ",color:"#ff0033"}
team modify A_adnim color white
team modify A_adnim prefix [{text:"ᴀᴅɴɪᴍ",color:"#ff0033"},{text:" | ",color:gray}]

team add B_deer {text:"ᴅᴇᴇʀ",color:yellow}
team modify B_deer color white
team modify B_deer prefix [{text:"ᴅᴇᴇʀ",color:yellow},{text:" | ",color:gray}]

team add M_mood {text:"ᴍᴏᴏᴅ",color:"#1fff0f"}
team modify M_mood color white
team modify M_mood prefix [{text:"ᴍᴏᴏᴅ",color:"#1fff0f"},{text:" | ",color:gray}]


tellraw @a[tag=is_admin] [{text:"ʟᴇɢɪᴛᴇʀᴍᴏᴏꜱᴇ.ᴄᴏᴍ ʟᴏᴀᴅᴇᴅ!",color:gray}]


function legitermoose:bossbar/load