function code:offline_time/leave_detect/get_player_count

scoreboard players display name 5 sidebar \
["     ",{text:"👥: ",color:gold},{score:{name:".global",objective:id},color:gold},{text:" | ",color:dark_gray},{text:"🌐: ",color:yellow},{score:{name:".players",objective:misc},color:yellow}]


execute if score .tps_i tps matches 18.. run return run scoreboard players display name 6 sidebar \
[" ",{text:"📶: ",color:"#00aaff"},{score:{name:".total",objective:requests},color:"#00aaff"},{text:" | ",color:dark_gray},\
{score:{name:".tps_i",objective:tps},color:green},".",{score:{name:".tps_f",objective:tps},color:green},{text:"tps ",color:green}]

execute if score .tps_i tps matches 13..17 run return run scoreboard players display name 6 sidebar \
[" ",{text:"📶: ",color:"#00aaff"},{score:{name:".total",objective:requests},color:"#00aaff"},{text:" | ",color:dark_gray},\
{score:{name:".tps_i",objective:tps},color:yellow},".",{score:{name:".tps_f",objective:tps},color:yellow},{text:"tps ",color:yellow}]

scoreboard players display name 6 sidebar \
[" ",{text:"📶: ",color:"#00aaff"},{score:{name:".total",objective:requests},color:"#00aaff"},{text:" | ",color:dark_gray},\
{score:{name:".tps_i",objective:tps},color:red},".",{score:{name:".tps_f",objective:tps},color:red},{text:"tps ",color:red}]