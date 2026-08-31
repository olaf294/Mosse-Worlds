execute if score .total_area wc.values > .max_blocks wc.values run return run tellraw @s \
[{text:"W",color:gold},{text:"C",color:yellow},{text:" » ",color:gray},{text:"Oᴘᴇʀᴀᴛɪᴏɴ ᴇxᴄᴇᴇᴅꜱ ᴍᴀxɪᴍᴜᴍ ʟɪᴍɪᴛ! (",color:red},{score:{name:".total_area",objective:wc.values},color:dark_aqua},{text:"/",color:red},{score:{name:".max_blocks",objective:wc.values},color:aqua},{text:")",color:red}]

execute unless score @s wc.pos1_x matches -2147483648..2147483647 unless score @s wc.pos2_x matches -2147483648..2147483647 run return run tellraw @s \
[{text:"W",color:gold},{text:"C",color:yellow},{text:" » ",color:gray},{text:"Mᴀᴋᴇ ᴀ ꜱᴇʟᴇᴄᴛɪᴏɴ ꜰɪʀꜱᴛ!",color:red}]

execute store result storage wc:blocks set.x1 int 1 run scoreboard players get @s wc.pos1_x
execute store result storage wc:blocks set.y1 int 1 run scoreboard players get @s wc.pos1_y
execute store result storage wc:blocks set.z1 int 1 run scoreboard players get @s wc.pos1_z
execute store result storage wc:blocks set.x2 int 1 run scoreboard players get @s wc.pos2_x
execute store result storage wc:blocks set.y2 int 1 run scoreboard players get @s wc.pos2_y
execute store result storage wc:blocks set.z2 int 1 run scoreboard players get @s wc.pos2_z

execute if items entity @s weapon.offhand * run data modify storage wc:blocks set.block set from entity @s equipment.offhand.id
execute if items entity @s weapon.offhand #wc:edgecase_items run function wc:wand/private/actions/set/edgecase_items

execute unless items entity @s weapon.offhand * run data modify storage wc:blocks set.block set value "air"

function wc:wand/private/actions/set/set_blocks with storage wc:blocks set