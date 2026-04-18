# Time
execute if score .seconds time matches 0..9 if score .minutes time matches 0..9 if score .hours time matches 0..9 as @n[type=text_display,tag=time_utc] run data modify entity @s text set value \
[{text:"Cᴜʀʀᴇɴᴛ Tɪᴍᴇ (UTC ",color:gold},{score:{name:".offset",objective:time},color:red},{text:")\n",color:gold},\
{text:"0",color:green},{score:{name:".hours",objective:time},color:green},{text:":",color:gray},\
{text:"0",color:green},{score:{name:".minutes",objective:time},color:green},{text:":",color:gray},\
{text:"0",color:green},{score:{name:".seconds",objective:time},color:green}]

execute if score .seconds time matches 10..60 if score .minutes time matches 0..9 if score .hours time matches 0..9 as @n[type=text_display,tag=time_utc] run data modify entity @s text set value \
[{text:"Cᴜʀʀᴇɴᴛ Tɪᴍᴇ (UTC ",color:gold},{score:{name:".offset",objective:time},color:red},{text:")\n",color:gold},\
{text:"0",color:green},{score:{name:".hours",objective:time},color:green},{text:":",color:gray},\
{text:"0",color:green},{score:{name:".minutes",objective:time},color:green},{text:":",color:gray},\
{score:{name:".seconds",objective:time},color:green}]

execute if score .seconds time matches 0..9 if score .minutes time matches 10..60 if score .hours time matches 0..9 as @n[type=text_display,tag=time_utc] run data modify entity @s text set value \
[{text:"Cᴜʀʀᴇɴᴛ Tɪᴍᴇ (UTC ",color:gold},{score:{name:".offset",objective:time},color:red},{text:")\n",color:gold},\
{text:"0",color:green},{score:{name:".hours",objective:time},color:green},{text:":",color:gray},\
{score:{name:".minutes",objective:time},color:green},{text:":",color:gray},\
{text:"0",color:green},{score:{name:".seconds",objective:time},color:green}]

execute if score .seconds time matches 0..9 if score .minutes time matches 0..9 if score .hours time matches 10..24 as @n[type=text_display,tag=time_utc] run data modify entity @s text set value \
[{text:"Cᴜʀʀᴇɴᴛ Tɪᴍᴇ (UTC ",color:gold},{score:{name:".offset",objective:time},color:red},{text:")\n",color:gold},\
{score:{name:".hours",objective:time},color:green},{text:":",color:gray},\
{text:"0",color:green},{score:{name:".minutes",objective:time},color:green},{text:":",color:gray},\
{text:"0",color:green},{score:{name:".seconds",objective:time},color:green}]

execute if score .seconds time matches 0..9 if score .minutes time matches 10..60 if score .hours time matches 10..24 as @n[type=text_display,tag=time_utc] run data modify entity @s text set value \
[{text:"Cᴜʀʀᴇɴᴛ Tɪᴍᴇ (UTC ",color:gold},{score:{name:".offset",objective:time},color:red},{text:")\n",color:gold},\
{score:{name:".hours",objective:time},color:green},{text:":",color:gray},\
{score:{name:".minutes",objective:time},color:green},{text:":",color:gray},\
{text:"0",color:green},{score:{name:".seconds",objective:time},color:green}]

execute if score .seconds time matches 10..60 if score .minutes time matches 0..9 if score .hours time matches 10..24 as @n[type=text_display,tag=time_utc] run data modify entity @s text set value \
[{text:"Cᴜʀʀᴇɴᴛ Tɪᴍᴇ (UTC ",color:gold},{score:{name:".offset",objective:time},color:red},{text:")\n",color:gold},\
{score:{name:".hours",objective:time},color:green},{text:":",color:gray},\
{text:"0",color:green},{score:{name:".minutes",objective:time},color:green},{text:":",color:gray},\
{score:{name:".seconds",objective:time},color:green}]

execute if score .seconds time matches 10..60 if score .minutes time matches 10..60 if score .hours time matches 10..24 as @n[type=text_display,tag=time_utc] run data modify entity @s text set value \
[{text:"Cᴜʀʀᴇɴᴛ Tɪᴍᴇ (UTC ",color:gold},{score:{name:".offset",objective:time},color:red},{text:")\n",color:gold},\
{score:{name:".hours",objective:time},color:green},{text:":",color:gray},\
{score:{name:".minutes",objective:time},color:green},{text:":",color:gray},\
{score:{name:".seconds",objective:time},color:green}]

execute if score .seconds time matches 10..60 if score .minutes time matches 10..60 if score .hours time matches 0..9 as @n[type=text_display,tag=time_utc] run data modify entity @s text set value \
[{text:"Cᴜʀʀᴇɴᴛ Tɪᴍᴇ (UTC ",color:gold},{score:{name:".offset",objective:time},color:red},{text:")\n",color:gold},\
{text:"0",color:green},{score:{name:".hours",objective:time},color:green},{text:":",color:gray},\
{score:{name:".minutes",objective:time},color:green},{text:":",color:gray},\
{score:{name:".seconds",objective:time},color:green}]



# Date
execute if score .day time matches 0..9 if score .month time matches 0..9 as @n[type=text_display,tag=date_utc] run data modify entity @s text set value \
[{text:"Cᴜʀʀᴇɴᴛ Dᴀᴛᴇ (UTC ",color:light_purple},{score:{name:".offset",objective:time},color:dark_purple},{text:")\n",color:light_purple},\
{text:"0",color:yellow},{score:{name:".day",objective:time},color:yellow},{text:".",color:dark_gray},\
{text:"0",color:yellow},{score:{name:".month",objective:time},color:yellow},{text:".",color:dark_gray},\
{score:{name:".year",objective:time},color:yellow}]

execute if score .day time matches 10..31 if score .month time matches 0..9 as @n[type=text_display,tag=date_utc] run data modify entity @s text set value \
[{text:"Cᴜʀʀᴇɴᴛ Dᴀᴛᴇ (UTC ",color:light_purple},{score:{name:".offset",objective:time},color:dark_purple},{text:")\n",color:light_purple},\
{score:{name:".day",objective:time},color:yellow},{text:".",color:dark_gray},\
{text:"0",color:yellow},{score:{name:".month",objective:time},color:yellow},{text:".",color:dark_gray},\
{score:{name:".year",objective:time},color:yellow}]

execute if score .day time matches 0..9 if score .month time matches 10..12 as @n[type=text_display,tag=date_utc] run data modify entity @s text set value \
[{text:"Cᴜʀʀᴇɴᴛ Dᴀᴛᴇ (UTC ",color:light_purple},{score:{name:".offset",objective:time},color:dark_purple},{text:")\n",color:light_purple},\
{text:"0",color:yellow},{score:{name:".day",objective:time},color:yellow},{text:".",color:dark_gray},\
{score:{name:".month",objective:time},color:yellow},{text:".",color:dark_gray},\
{score:{name:".year",objective:time},color:yellow}]

execute if score .day time matches 10..31 if score .month time matches 10..12 as @n[type=text_display,tag=date_utc] run data modify entity @s text set value \
[{text:"Cᴜʀʀᴇɴᴛ Dᴀᴛᴇ (UTC ",color:light_purple},{score:{name:".offset",objective:time},color:dark_purple},{text:")\n",color:light_purple},\
{score:{name:".day",objective:time},color:yellow},{text:".",color:dark_gray},\
{score:{name:".month",objective:time},color:yellow},{text:".",color:dark_gray},\
{score:{name:".year",objective:time},color:yellow}]



# Actionbar
execute if score .seconds time matches 0..9 if score .minutes time matches 0..9 if score @s hour matches 0..9 run title @s[tag=!legitermoose.disable_global_time] actionbar \
[{text:"Time: ",color:gold},{text:"0",color:green},{score:{name:"@s",objective:hour},color:green},{text:":",color:gray},\
{text:"0",color:green},{score:{name:".minutes",objective:time},color:green},{text:":",color:gray},\
{text:"0",color:green},{score:{name:".seconds",objective:time},color:green},{text:" (Offset: ",color:gold},{score:{name:"@s",objective:offset},color:red},{text:")",color:gold}]

execute if score .seconds time matches 10..60 if score .minutes time matches 0..9 if score @s hour matches 0..9 run title @s[tag=!legitermoose.disable_global_time] actionbar \
[{text:"Time: ",color:gold},{text:"0",color:green},{score:{name:"@s",objective:hour},color:green},{text:":",color:gray},\
{text:"0",color:green},{score:{name:".minutes",objective:time},color:green},{text:":",color:gray},\
{score:{name:".seconds",objective:time},color:green},{text:" (Offset: ",color:gold},{score:{name:"@s",objective:offset},color:red},{text:")",color:gold}]

execute if score .seconds time matches 0..9 if score .minutes time matches 10..60 if score @s hour matches 0..9 run title @s[tag=!legitermoose.disable_global_time] actionbar \
[{text:"Time: ",color:gold},{text:"0",color:green},{score:{name:"@s",objective:hour},color:green},{text:":",color:gray},\
{score:{name:".minutes",objective:time},color:green},{text:":",color:gray},\
{text:"0",color:green},{score:{name:".seconds",objective:time},color:green},{text:" (Offset: ",color:gold},{score:{name:"@s",objective:offset},color:red},{text:")",color:gold}]

execute if score .seconds time matches 0..9 if score .minutes time matches 0..9 if score @s hour matches 10..24 run title @s[tag=!legitermoose.disable_global_time] actionbar \
[{text:"Time: ",color:gold},{score:{name:"@s",objective:hour},color:green},{text:":",color:gray},\
{text:"0",color:green},{score:{name:".minutes",objective:time},color:green},{text:":",color:gray},\
{text:"0",color:green},{score:{name:".seconds",objective:time},color:green},{text:" (Offset: ",color:gold},{score:{name:"@s",objective:offset},color:red},{text:")",color:gold}]

execute if score .seconds time matches 0..9 if score .minutes time matches 10..60 if score @s hour matches 10..24 run title @s[tag=!legitermoose.disable_global_time] actionbar \
[{text:"Time: ",color:gold},{score:{name:"@s",objective:hour},color:green},{text:":",color:gray},\
{score:{name:".minutes",objective:time},color:green},{text:":",color:gray},\
{text:"0",color:green},{score:{name:".seconds",objective:time},color:green},{text:" (Offset: ",color:gold},{score:{name:"@s",objective:offset},color:red},{text:")",color:gold}]

execute if score .seconds time matches 10..60 if score .minutes time matches 0..9 if score @s hour matches 10..24 run title @s[tag=!legitermoose.disable_global_time] actionbar \
[{text:"Time: ",color:gold},{score:{name:"@s",objective:hour},color:green},{text:":",color:gray},\
{text:"0",color:green},{score:{name:".minutes",objective:time},color:green},{text:":",color:gray},\
{score:{name:".seconds",objective:time},color:green},{text:" (Offset: ",color:gold},{score:{name:"@s",objective:offset},color:red},{text:")",color:gold}]

execute if score .seconds time matches 10..60 if score .minutes time matches 10..60 if score @s hour matches 10..24 run title @s[tag=!legitermoose.disable_global_time] actionbar \
[{text:"Time: ",color:gold},{score:{name:"@s",objective:hour},color:green},{text:":",color:gray},\
{score:{name:".minutes",objective:time},color:green},{text:":",color:gray},\
{score:{name:".seconds",objective:time},color:green},{text:" (Offset: ",color:gold},{score:{name:"@s",objective:offset},color:red},{text:")",color:gold}]

execute if score .seconds time matches 10..60 if score .minutes time matches 10..60 if score @s hour matches 0..9 run title @s[tag=!legitermoose.disable_global_time] actionbar \
[{text:"Time: ",color:gold},{text:"0",color:green},{score:{name:"@s",objective:hour},color:green},{text:":",color:gray},\
{score:{name:".minutes",objective:time},color:green},{text:":",color:gray},\
{score:{name:".seconds",objective:time},color:green},{text:" (Offset: ",color:gold},{score:{name:"@s",objective:offset},color:red},{text:")",color:gold}]