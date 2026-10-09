execute positioned 40 69 -12 run tellraw @a[distance=..12] [ {text:"CJF1 ɪꜱ ᴏɴʟɪɴᴇ.\n",color:green},{text:"Wᴏʀʟᴅ: ",color:gray},{storage:player_detect,nbt:'a[{players:["CJF1"]}].world',interpret:1b,color:green}]

data modify entity @e[type=text_display,tag=cjf_status,limit=1] text.extra[1].text set value "ᴏɴʟɪɴᴇ"
data modify entity @e[type=text_display,tag=cjf_status,limit=1] text.extra[1].color set value "green"

data modify entity @e[type=text_display,tag=cjf_world,limit=1] text.text set value "CJF1 ɪꜱ ɪɴ "
data modify entity @e[type=text_display,tag=cjf_world,limit=1] text.extra[0] set from storage player_detect a[{players:["CJF1"]}].world
execute if data storage player_detect a[{players:["CJF1"],world:"lobby"}] run data modify entity @e[type=text_display,tag=cjf_world,limit=1] text.extra[0] set value {text:"Lᴏʙʙʏ",color:gold}