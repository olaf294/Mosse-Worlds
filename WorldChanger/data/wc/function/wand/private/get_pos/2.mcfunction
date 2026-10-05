# Get Position
function wc:wand/private/util/get_pos/current_block
scoreboard players operation @s wc.pos2_x = .x wc.temp
scoreboard players operation @s wc.pos2_y = .y wc.temp
scoreboard players operation @s wc.pos2_z = .z wc.temp

# Get Area
execute if score @s wc.pos1_x matches -2147483648..2147483647 run function wc:wand/private/calc_area

tellraw @s [{text:"W",color:gold},{text:"C",color:yellow},{text:" » ",color:gray},{text:"Sᴇᴄᴏɴᴅ ᴘᴏꜱɪᴛɪᴏɴ ꜱᴇᴛ ᴛᴏ [",color:blue},{score:{name:"@s",objective:wc.pos2_x},color:aqua},{text:", ",color:blue},{score:{name:"@s",objective:wc.pos2_y},color:aqua},{text:", ",color:blue},{score:{name:"@s",objective:wc.pos2_z},color:aqua},{text:"] (",color:blue},{score:{name:".total_area",objective:"wc.values"},color:aqua},{text:")",color:blue}]