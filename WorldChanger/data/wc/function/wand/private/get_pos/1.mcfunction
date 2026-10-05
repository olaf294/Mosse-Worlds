# Get Position
function wc:wand/private/util/get_pos/current_block
scoreboard players operation @s wc.pos1_x = .x wc.temp
scoreboard players operation @s wc.pos1_y = .y wc.temp
scoreboard players operation @s wc.pos1_z = .z wc.temp

# Get Area
execute if score @s wc.pos2_x matches -2147483648..2147483647 run function wc:wand/private/calc_area

tellraw @s [{text:"W",color:gold},{text:"C",color:yellow},{text:" » ",color:gray},{text:"Fɪʀꜱᴛ ᴘᴏꜱɪᴛɪᴏɴ ꜱᴇᴛ ᴛᴏ [",color:blue},{score:{name:"@s",objective:wc.pos1_x},color:aqua},{text:", ",color:blue},{score:{name:"@s",objective:wc.pos1_y},color:aqua},{text:", ",color:blue},{score:{name:"@s",objective:wc.pos1_z},color:aqua},{text:"] (",color:blue},{score:{name:".total_area",objective:"wc.values"},color:aqua},{text:")",color:blue}]