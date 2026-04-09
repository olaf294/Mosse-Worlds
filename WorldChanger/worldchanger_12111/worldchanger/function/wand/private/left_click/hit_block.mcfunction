# Get Position
summon marker ~ ~ ~ {Tags:["wc.pos1.temp"]}
execute store result score @s wc.pos1_x run data get entity @n[type=marker,tag=wc.pos1.temp] Pos[0]
execute store result score @s wc.pos1_y run data get entity @n[type=marker,tag=wc.pos1.temp] Pos[1]
execute store result score @s wc.pos1_z run data get entity @n[type=marker,tag=wc.pos1.temp] Pos[2]
kill @e[tag=wc.pos1.temp]

# Marker
kill @e[type=block_display,tag=wc.pos1.marker]
execute align xyz positioned ~.5 ~.5 ~.5 run summon block_display ~ ~ ~ {Tags:["wc.pos1.marker"],block_state:{Name:"blue_stained_glass"},transformation:{left_rotation:[0.0f, 0.0f, 0.0f, 1.0f],right_rotation:[0.0f, 0.0f, 0.0f, 1.0f],translation:[-0.54f, -0.54f, -0.54f],scale:[1.08f, 1.08f, 1.08f]},brightness:{block:15,sky:15}}

# Get Area
execute if score @s wc.pos1_x matches -2147483648..2147483647 run function worldchanger:wand/private/calc_area

tellraw @s [{text:"W",color:gold},{text:"C",color:yellow},{text:" » ",color:gray},{text:"Fɪʀꜱᴛ ᴘᴏꜱɪᴛɪᴏɴ ꜱᴇᴛ ᴛᴏ [",color:blue},{score:{name:"@s",objective:wc.pos1_x},color:aqua},{text:", ",color:blue},{score:{name:"@s",objective:wc.pos1_y},color:aqua},{text:", ",color:blue},{score:{name:"@s",objective:wc.pos1_z},color:aqua},{text:"] (",color:blue},{score:{name:".total_area",objective:"wc.values"},color:aqua},{text:")",color:blue}]