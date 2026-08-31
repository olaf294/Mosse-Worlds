$execute store success score .pass wc.values run clone $(x1) $(y1) $(z1) $(x2) $(y2) $(z2) $(x3) $(y3) $(z3)

execute if score .pass wc.values matches 0 run return run tellraw @s [{text:"W",color:gold},{text:"C",color:yellow},{text:" » ",color:gray},{text:"Oᴘᴇʀᴀᴛɪᴏɴ ᴄᴏᴜʟᴅ ɴᴏᴛ ꜱᴜᴄᴄᴇᴇᴅ.",color:gray}]

tellraw @s [{text:"W",color:gold},{text:"C",color:yellow},{text:" » ",color:gray},{text:"Oᴘᴇʀᴀᴛɪᴏɴ ᴄᴏᴍᴘʟᴇᴛᴇᴅ (",color:blue},{score:{name:".total_area",objective:"wc.values"},color:aqua},{text:" ʙʟᴏᴄᴋꜱ)",color:blue}]