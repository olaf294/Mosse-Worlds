execute positioned 40 69 -4 run tellraw @a[distance=..12] [ {text:"ʜᴀʙʟᴇᴛʜᴇᴅᴇᴠ ɪꜱ ᴏɴʟɪɴᴇ.\n",color:green},{text:"Wᴏʀʟᴅ: ",color:gray},{storage:player_detect,nbt:'a[{players:["hablethedev"]}].world',interpret:1b,color:green}]

data modify entity @e[type=text_display,tag=hazel_status,limit=1] text.extra[1].text set value "ᴏɴʟɪɴᴇ"
data modify entity @e[type=text_display,tag=hazel_status,limit=1] text.extra[1].color set value "green"

data modify entity @e[type=text_display,tag=hazel_world,limit=1] text.text set value "ʜᴀʙʟᴇᴛʜᴇᴅᴇᴠ ɪꜱ ɪɴ "
data modify entity @e[type=text_display,tag=hazel_world,limit=1] text.extra[0] set from storage player_detect a[{players:["hablethedev"]}].world
execute if data storage player_detect a[{players:["hablethedev"],world:"lobby"}] run data modify entity @e[type=text_display,tag=hazel_world,limit=1] text.extra[0] set value {text:"Lᴏʙʙʏ",color:gold}