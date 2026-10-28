scoreboard players set .polish_online playerdetect 0
scoreboard players set .polish_seen playerdetect 0

execute positioned 9 64 -23 run tellraw @a[distance=..12] {text:"Pᴏʟɪꜱʜᴋʀᴏᴡᴀ ɪꜱ ɴᴏᴛ ᴏɴʟɪɴᴇ.",color:red}

data modify entity @e[type=text_display,tag=polish_status,limit=1] text.extra[1].text set value "ᴏꜰꜰʟɪɴᴇ"
data modify entity @e[type=text_display,tag=polish_status,limit=1] text.extra[1].color set value "red"

data modify entity @e[type=text_display,tag=polish_world,limit=1] text.extra[0] set value {text:"",color:"dark_gray"}
data modify entity @e[type=text_display,tag=polish_world,limit=1] text.text set value "Pᴏʟɪꜱʜᴋʀᴏᴡᴀ ɪꜱ ɴᴏᴛ ᴏɴʟɪɴᴇ"

execute if loaded 12 65 -26 run fill 12 65 -26 12 67 -20 red_nether_bricks strict