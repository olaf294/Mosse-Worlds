execute if score .total_area wc.values > .max_blocks wc.values run return run tellraw @s [{text:"W",color:gold},{text:"C",color:yellow},{text:" » ",color:gray},{text:"Oᴘᴇʀᴀᴛɪᴏɴ ᴇxᴄᴇᴇᴅꜱ ᴍᴀxɪᴍᴜᴍ ʟɪᴍɪᴛ! (",color:red},{score:{name:".max_blocks",objective:wc.values},color:aqua},{text:")",color:red}]

execute store result storage worldchanger:blocks x1 int 1 run scoreboard players get @s wc.pos1_x
execute store result storage worldchanger:blocks y1 int 1 run scoreboard players get @s wc.pos1_y
execute store result storage worldchanger:blocks z1 int 1 run scoreboard players get @s wc.pos1_z
execute store result storage worldchanger:blocks x2 int 1 run scoreboard players get @s wc.pos2_x
execute store result storage worldchanger:blocks y2 int 1 run scoreboard players get @s wc.pos2_y
execute store result storage worldchanger:blocks z2 int 1 run scoreboard players get @s wc.pos2_z

execute if data entity @s equipment.offhand run data modify storage worldchanger:blocks block set from entity @s equipment.offhand.id
execute unless data entity @s equipment.offhand run data modify storage worldchanger:blocks block set value "air"

function worldchanger:wand/private/actions/set/set_blocks with storage worldchanger:blocks