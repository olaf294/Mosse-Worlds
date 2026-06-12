scoreboard players add .req_jam_id misc 1
execute if score .req_jam_id misc > .max_jam misc run scoreboard players set .req_jam_id misc 0

execute if score .req_jam_id misc matches 0 run tellraw @a[distance=..11] [{text:"Tᴀʀɢᴇᴛ ᴊᴀᴍ ɪᴅ ꜱᴇᴛ ᴛᴏ ",color:green},{text:"ᴀʟʟ ᴊᴀᴍꜱ",color:yellow}]
execute unless score .req_jam_id misc matches 0 run tellraw @a[distance=..11] [{text:"Tᴀʀɢᴇᴛ ᴊᴀᴍ ɪᴅ ꜱᴇᴛ ᴛᴏ ",color:green},{score:{name:".req_jam_id",objective:misc},color:yellow}]

execute store result storage api jam.req_id int 1 run scoreboard players get .req_jam_id misc
execute unless score .req_jam_id misc matches 0 run return run data modify entity @n[type=text_display] text.extra[0].text set string storage api jam.req_id
execute if score .req_jam_id misc matches 0 run return run data modify entity @n[type=text_display] text.extra[0].text set value "ᴀʟʟ ᴊᴀᴍꜱ"