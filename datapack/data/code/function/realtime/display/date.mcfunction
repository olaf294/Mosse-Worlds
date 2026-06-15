# Date
execute if score .day time matches 0..9 if score .month time matches 0..9 as @n[type=text_display,tag=date_utc] run return run data modify entity @s text set value \
[{text:" Cᴜʀʀᴇɴᴛ Dᴀᴛᴇ \n",color:light_purple},\
{text:"0",color:yellow},{score:{name:".day",objective:time},color:yellow},{text:".",color:dark_gray},\
{text:"0",color:yellow},{score:{name:".month",objective:time},color:yellow},{text:".",color:dark_gray},\
{score:{name:".year",objective:time},color:yellow}]

execute if score .day time matches 10..31 if score .month time matches 0..9 as @n[type=text_display,tag=date_utc] run return run data modify entity @s text set value \
[{text:" Cᴜʀʀᴇɴᴛ Dᴀᴛᴇ \n",color:light_purple},\
{score:{name:".day",objective:time},color:yellow},{text:".",color:dark_gray},\
{text:"0",color:yellow},{score:{name:".month",objective:time},color:yellow},{text:".",color:dark_gray},\
{score:{name:".year",objective:time},color:yellow}]

execute if score .day time matches 0..9 if score .month time matches 10..12 as @n[type=text_display,tag=date_utc] run return run data modify entity @s text set value \
[{text:" Cᴜʀʀᴇɴᴛ Dᴀᴛᴇ \n",color:light_purple},\
{text:"0",color:yellow},{score:{name:".day",objective:time},color:yellow},{text:".",color:dark_gray},\
{score:{name:".month",objective:time},color:yellow},{text:".",color:dark_gray},\
{score:{name:".year",objective:time},color:yellow}]

execute if score .day time matches 10..31 if score .month time matches 10..12 as @n[type=text_display,tag=date_utc] run return run data modify entity @s text set value \
[{text:" Cᴜʀʀᴇɴᴛ Dᴀᴛᴇ \n",color:light_purple},\
{score:{name:".day",objective:time},color:yellow},{text:".",color:dark_gray},\
{score:{name:".month",objective:time},color:yellow},{text:".",color:dark_gray},\
{score:{name:".year",objective:time},color:yellow}]