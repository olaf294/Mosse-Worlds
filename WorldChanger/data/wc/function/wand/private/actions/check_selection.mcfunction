execute if score .total_area wc.values > .max_blocks wc.values run return run tellraw @s \
[{text:"W",color:gold},{text:"C",color:yellow},{text:" » ",color:gray},{text:"Oᴘᴇʀᴀᴛɪᴏɴ ᴇxᴄᴇᴇᴅꜱ ᴍᴀxɪᴍᴜᴍ ʟɪᴍɪᴛ! (",color:red},{score:{name:".total_area",objective:wc.values},color:dark_aqua},{text:"/",color:red},{score:{name:".max_blocks",objective:wc.values},color:aqua},{text:")",color:red}]

execute unless score @s wc.pos1_x matches -2147483648..2147483647 run return run tellraw @s \
[{text:"W",color:gold},{text:"C",color:yellow},{text:" » ",color:gray},{text:"Mᴀᴋᴇ ᴀ ꜱᴇʟᴇᴄᴛɪᴏɴ ꜰɪʀꜱᴛ!",color:red}]

execute unless score @s wc.pos2_x matches -2147483648..2147483647 run return run tellraw @s \
[{text:"W",color:gold},{text:"C",color:yellow},{text:" » ",color:gray},{text:"Mᴀᴋᴇ ᴀ ꜱᴇʟᴇᴄᴛɪᴏɴ ꜰɪʀꜱᴛ!",color:red}]