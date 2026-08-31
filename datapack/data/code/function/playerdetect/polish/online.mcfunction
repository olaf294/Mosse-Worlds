execute positioned 9 64 -23 run tellraw @a[distance=..12] [ {text:"PᴏʟɪꜱʜKʀᴏᴡᴀ ɪꜱ ᴏɴʟɪɴᴇ.\n",color:green},{text:"Wᴏʀʟᴅ: ",color:gray},{storage:player_detect,nbt:'a[{players:["PolishKrowa"]}].world',interpret:1b,color:green}]

data modify entity @n[type=text_display,tag=polish_status] text.extra[1].text set value "ᴏɴʟɪɴᴇ"
data modify entity @n[type=text_display,tag=polish_status] text.extra[1].color set value "green"

data modify entity @n[type=text_display,tag=polish_world] text.text set value "PᴏʟɪꜱʜKʀᴏᴡᴀ ɪꜱ ɪɴ "
data modify entity @n[type=text_display,tag=polish_world] text.extra[0] set from storage player_detect a[{players:["PolishKrowa"]}].world
execute if data storage player_detect a[{players:["PolishKrowa"],world:"lobby"}] run data modify entity @n[type=text_display,tag=polish_world] text.extra[0] set value {text:"Lᴏʙʙʏ",color:gold}