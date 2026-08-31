# Get Position
summon marker ~ ~ ~ {Tags:["wc.pos1.temp"]}
execute store result score @s wc.pos1_x run data get entity @n[type=marker,tag=wc.pos1.temp] Pos[0]
execute store result score @s wc.pos1_y run data get entity @n[type=marker,tag=wc.pos1.temp] Pos[1]
execute store result score @s wc.pos1_z run data get entity @n[type=marker,tag=wc.pos1.temp] Pos[2]
kill @e[type=marker,tag=wc.pos1.temp]

# Get Area
execute if score @s wc.pos2_x matches -2147483648..2147483647 run function wc:wand/private/calc_area

tellraw @s [{text:"W",color:gold},{text:"C",color:yellow},{text:" » ",color:gray},{text:"Fɪʀꜱᴛ ᴘᴏꜱɪᴛɪᴏɴ ꜱᴇᴛ ᴛᴏ [",color:blue},{score:{name:"@s",objective:wc.pos1_x},color:aqua},{text:", ",color:blue},{score:{name:"@s",objective:wc.pos1_y},color:aqua},{text:", ",color:blue},{score:{name:"@s",objective:wc.pos1_z},color:aqua},{text:"] (",color:blue},{score:{name:".total_area",objective:"wc.values"},color:aqua},{text:")",color:blue}]