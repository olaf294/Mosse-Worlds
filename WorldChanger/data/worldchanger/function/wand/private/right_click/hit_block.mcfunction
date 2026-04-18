# Get Position
summon marker ~ ~ ~ {Tags:["wc.pos2.temp"]}
execute store result score @s wc.pos2_x run data get entity @n[type=marker,tag=wc.pos2.temp] Pos[0]
execute store result score @s wc.pos2_y run data get entity @n[type=marker,tag=wc.pos2.temp] Pos[1]
execute store result score @s wc.pos2_z run data get entity @n[type=marker,tag=wc.pos2.temp] Pos[2]
kill @e[tag=wc.pos2.temp]

kill @e[type=block_display,tag=wc.pos2.marker]
execute align xyz positioned ~.5 ~.5 ~.5 run summon block_display ~ ~ ~ {Tags:["wc.pos2.marker"],block_state:{Name:"red_stained_glass"},transformation:{left_rotation:[0.0f, 0.0f, 0.0f, 1.0f],right_rotation:[0.0f, 0.0f, 0.0f, 1.0f],translation:[-0.55f, -0.55f, -0.55f],scale:[1.1f, 1.1f, 1.1f]},brightness:{block:15,sky:15}}

# Get Area
execute if score @s wc.pos1_x matches -2147483648..2147483647 run function worldchanger:wand/private/calc_area

tellraw @s [{text:"W",color:gold},{text:"C",color:yellow},{text:" » ",color:gray},{text:"Sᴇᴄᴏɴᴅ ᴘᴏꜱɪᴛɪᴏɴ ꜱᴇᴛ ᴛᴏ [",color:blue},{score:{name:"@s",objective:wc.pos2_x},color:aqua},{text:", ",color:blue},{score:{name:"@s",objective:wc.pos2_y},color:aqua},{text:", ",color:blue},{score:{name:"@s",objective:wc.pos2_z},color:aqua},{text:"] (",color:blue},{score:{name:".total_area",objective:"wc.values"},color:aqua},{text:")",color:blue}]