tellraw @a [ {text:"Lᴏɢʙᴏɢ ɪꜱ ᴏɴʟɪɴᴇ!!!\n",color:green,bold:1b},{text:"Wᴏʀʟᴅ: ",color:gray},{storage:player_detect,nbt:'a[{players:["Logbog"]}].world',interpret:1b,color:green}]
execute at @a run playsound ui.toast.challenge_complete master @a ~ ~ ~ 100 1

data modify entity @e[type=text_display,tag=logbog_status,limit=1] text.extra[1].text set value "ᴏɴʟɪɴᴇ"
data modify entity @e[type=text_display,tag=logbog_status,limit=1] text.extra[1].color set value "green"

data modify entity @e[type=text_display,tag=logbog_world,limit=1] text.text set value "Lᴏɢʙᴏɢ ɪꜱ ɪɴ "
data modify entity @e[type=text_display,tag=logbog_world,limit=1] text.extra[0] set from storage player_detect a[{players:["Logbog"]}].world
execute if data storage player_detect a[{players:["Logbog"],world:"lobby"}] run data modify entity @e[type=text_display,tag=logbog_world,limit=1] text.extra[0] set value {text:"Lᴏʙʙʏ",color:gold}