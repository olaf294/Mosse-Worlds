scoreboard players operation @s last_played -= .time time
scoreboard players operation @s last_played *= -1 numbers

scoreboard players operation .hours last_played = @s last_played
scoreboard players operation .hours last_played /= 3600 numbers

scoreboard players operation .minutes last_played = @s last_played
scoreboard players operation .minutes last_played /= 60 numbers
scoreboard players operation .minutes last_played %= 60 numbers

scoreboard players operation .seconds last_played = @s last_played
scoreboard players operation .seconds last_played %= 60 numbers 



execute unless score .hours last_played matches 0..9 unless score .minutes last_played matches 0..9 unless score .seconds last_played matches 0..9 run return run tellraw @s [{text:"Yᴏᴜ ʜᴀᴠᴇ ʙᴇᴇɴ ᴏꜰꜰʟɪɴᴇ ꜰᴏʀ ",color:yellow},\
{score:{name:".hours",objective:last_played},color:green},{text:":",color:gray},\
{score:{name:".minutes",objective:last_played},color:green},{text:":",color:gray},\
{score:{name:".seconds",objective:last_played},color:green}]

execute if score .hours last_played matches 0..9 unless score .minutes last_played matches 0..9 unless score .seconds last_played matches 0..9 run return run tellraw @s [{text:"Yᴏᴜ ʜᴀᴠᴇ ʙᴇᴇɴ ᴏꜰꜰʟɪɴᴇ ꜰᴏʀ ",color:yellow},\
{text:"0",color:green},{score:{name:".hours",objective:last_played},color:green},{text:":",color:gray},\
{score:{name:".minutes",objective:last_played},color:green},{text:":",color:gray},\
{score:{name:".seconds",objective:last_played},color:green}]

execute unless score .hours last_played matches 0..9 if score .minutes last_played matches 0..9 unless score .seconds last_played matches 0..9 run return run tellraw @s [{text:"Yᴏᴜ ʜᴀᴠᴇ ʙᴇᴇɴ ᴏꜰꜰʟɪɴᴇ ꜰᴏʀ ",color:yellow},\
{score:{name:".hours",objective:last_played},color:green},{text:":",color:gray},\
{text:"0",color:green},{score:{name:".minutes",objective:last_played},color:green},{text:":",color:gray},\
{score:{name:".seconds",objective:last_played},color:green}]

execute unless score .hours last_played matches 0..9 unless score .minutes last_played matches 0..9 if score .seconds last_played matches 0..9 run return run tellraw @s [{text:"Yᴏᴜ ʜᴀᴠᴇ ʙᴇᴇɴ ᴏꜰꜰʟɪɴᴇ ꜰᴏʀ ",color:yellow},\
{score:{name:".hours",objective:last_played},color:green},{text:":",color:gray},\
{score:{name:".minutes",objective:last_played},color:green},{text:":",color:gray},\
{text:"0",color:green},{score:{name:".seconds",objective:last_played},color:green}]

execute if score .hours last_played matches 0..9 if score .minutes last_played matches 0..9 unless score .seconds last_played matches 0..9 run return run tellraw @s [{text:"Yᴏᴜ ʜᴀᴠᴇ ʙᴇᴇɴ ᴏꜰꜰʟɪɴᴇ ꜰᴏʀ ",color:yellow},\
{text:"0",color:green},{score:{name:".hours",objective:last_played},color:green},{text:":",color:gray},\
{text:"0",color:green},{score:{name:".minutes",objective:last_played},color:green},{text:":",color:gray},\
{score:{name:".seconds",objective:last_played},color:green}]

execute if score .hours last_played matches 0..9 unless score .minutes last_played matches 0..9 if score .seconds last_played matches 0..9 run return run tellraw @s [{text:"Yᴏᴜ ʜᴀᴠᴇ ʙᴇᴇɴ ᴏꜰꜰʟɪɴᴇ ꜰᴏʀ ",color:yellow},\
{text:"0",color:green},{score:{name:".hours",objective:last_played},color:green},{text:":",color:gray},\
{score:{name:".minutes",objective:last_played},color:green},{text:":",color:gray},\
{text:"0",color:green},{score:{name:".seconds",objective:last_played},color:green}]

execute unless score .hours last_played matches 0..9 if score .minutes last_played matches 0..9 if score .seconds last_played matches 0..9 run return run tellraw @s [{text:"Yᴏᴜ ʜᴀᴠᴇ ʙᴇᴇɴ ᴏꜰꜰʟɪɴᴇ ꜰᴏʀ ",color:yellow},\
{score:{name:".hours",objective:last_played},color:green},{text:":",color:gray},\
{text:"0",color:green},{score:{name:".minutes",objective:last_played},color:green},{text:":",color:gray},\
{text:"0",color:green},{score:{name:".seconds",objective:last_played},color:green}]

execute if score .hours last_played matches 0..9 if score .minutes last_played matches 0..9 if score .seconds last_played matches 0..9 run return run tellraw @s [{text:"Yᴏᴜ ʜᴀᴠᴇ ʙᴇᴇɴ ᴏꜰꜰʟɪɴᴇ ꜰᴏʀ ",color:yellow},\
{text:"0",color:green},{score:{name:".hours",objective:last_played},color:green},{text:":",color:gray},\
{text:"0",color:green},{score:{name:".minutes",objective:last_played},color:green},{text:":",color:gray},\
{text:"0",color:green},{score:{name:".seconds",objective:last_played},color:green}]