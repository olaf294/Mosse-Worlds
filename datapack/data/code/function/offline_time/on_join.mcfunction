tag @s remove temp_joined

# run streak after time has updated
function code:streak/get_time

scoreboard players operation @s last_played -= .time time
scoreboard players operation @s last_played *= -1 numbers

scoreboard players operation .hours last_played = @s last_played
scoreboard players operation .hours last_played /= 3600 numbers

scoreboard players operation .minutes last_played = @s last_played
scoreboard players operation .minutes last_played /= 60 numbers
scoreboard players operation .minutes last_played %= 60 numbers

scoreboard players operation .seconds last_played = @s last_played
scoreboard players operation .seconds last_played %= 60 numbers 

execute if score .seconds last_played matches 0..9 run data modify storage time t.s set value "0"
execute if score .minutes last_played matches 0..9 run data modify storage time t.m set value "0"
execute if score .hours last_played matches 0..9 run data modify storage time t.h set value "0"
execute unless score .seconds last_played matches 0..9 run data modify storage time t.s set value ""
execute unless score .minutes last_played matches 0..9 run data modify storage time t.m set value ""
execute unless score .hours last_played matches 0..9 run data modify storage time t.h set value ""

tellraw @s [{text:"Yᴏᴜ ʜᴀᴠᴇ ʙᴇᴇɴ ᴏꜰꜰʟɪɴᴇ ꜰᴏʀ ",color:yellow},\
{storage:time,nbt:"t.h",interpret:1b,color:green},{score:{name:".hours",objective:last_played},color:green},{text:":",color:gray},\
{storage:time,nbt:"t.m",interpret:1b,color:green},{score:{name:".minutes",objective:last_played},color:green},{text:":",color:gray},\
{storage:time,nbt:"t.s",interpret:1b,color:green},{score:{name:".seconds",objective:last_played},color:green}]