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


execute as @a run function code:realtime/display/actionbar


execute if score .hours time matches 1..22 run return fail
function code:realtime/display/date