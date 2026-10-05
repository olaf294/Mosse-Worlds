execute positioned 40 69 -28 run tellraw @a[distance=..12] [ {text:"ᴍᴍᴍᴍᴍᴀᴀᴀᴀᴀxxxxx ɪꜱ ᴏɴʟɪɴᴇ.\n",color:green},{text:"Wᴏʀʟᴅ: ",color:gray},{storage:player_detect,nbt:'a[{players:["mmmmmaaaaaxxxxx"]}].world',interpret:1b,color:green}]

data modify entity @e[type=text_display,tag=max_status,limit=1] text.extra[1].text set value "ᴏɴʟɪɴᴇ"
data modify entity @e[type=text_display,tag=max_status,limit=1] text.extra[1].color set value "green"

data modify entity @e[type=text_display,tag=max_world,limit=1] text.text set value "ᴍᴍᴍᴍᴍᴀᴀᴀᴀᴀxxxxx ɪꜱ ɪɴ "
data modify entity @e[type=text_display,tag=max_world,limit=1] text.extra[0] set from storage player_detect a[{players:["mmmmmaaaaaxxxxx"]}].world
execute if data storage player_detect a[{players:["mmmmmaaaaaxxxxx"],world:"lobby"}] run data modify entity @e[type=text_display,tag=max_world,limit=1] text.extra[0] set value {text:"Lᴏʙʙʏ",color:gold}