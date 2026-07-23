execute positioned 9 64 -15 run tellraw @a[distance=..12] [ {text:"Lᴇɢɪᴛᴇʀᴍᴏᴏꜱᴇ ɪꜱ ᴏɴʟɪɴᴇ.\n",color:green},{text:"Wᴏʀʟᴅ: ",color:gray},{storage:player_detect,nbt:'a[{players:["Legitermoose"]}].world',interpret:1b,color:green}]

data modify entity @n[type=text_display,tag=moss_status] text.extra[1].text set value "ᴏɴʟɪɴᴇ"
data modify entity @n[type=text_display,tag=moss_status] text.extra[1].color set value "green"

data modify entity @n[type=text_display,tag=moss_world] text.text set value "Legitermoose is in "
data modify entity @n[type=text_display,tag=moss_world] text.extra[0] set from storage player_detect a[{players:["Legitermoose"]}].world
execute if data storage player_detect a[{players:["Legitermoose"],world:"lobby"}] run data modify entity @n[type=text_display,tag=moss_world] text.extra[0] set value {text:"Lobby",color:gold}