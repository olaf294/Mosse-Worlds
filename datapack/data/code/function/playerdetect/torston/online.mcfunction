execute positioned 40 69 -12 run tellraw @a[distance=..12] [ {text:"T0ʀꜱᴛᴏɴ ɪꜱ ᴏɴʟɪɴᴇ.\n",color:green},{text:"Wᴏʀʟᴅ: ",color:gray},{storage:player_detect,nbt:'a[{players:["T0rston"]}].world',interpret:1b,color:green}]

data modify entity @n[type=text_display,tag=torston_status] text.extra[1].text set value "ᴏɴʟɪɴᴇ"
data modify entity @n[type=text_display,tag=torston_status] text.extra[1].color set value "green"

data modify entity @n[type=text_display,tag=torston_world] text.text set value "T0ʀꜱᴛᴏɴ ɪꜱ ɪɴ "
data modify entity @n[type=text_display,tag=torston_world] text.extra[0] set from storage player_detect a[{players:["T0rston"]}].world
execute if data storage player_detect a[{players:["T0rston"],world:"lobby"}] run data modify entity @n[type=text_display,tag=torston_world] text.extra[0] set value {text:"Lᴏʙʙʏ",color:gold}