# Set per player Hour
scoreboard players operation @s hour = .hour_utc time
scoreboard players operation @s hour += @s hour2
scoreboard players operation @s hour %= 24 numbers

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