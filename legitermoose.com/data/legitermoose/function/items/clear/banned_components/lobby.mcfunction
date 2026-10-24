tellraw @s {text:"Tʜɪꜱ ɪᴛᴇᴍ ᴄᴀɴɴᴏᴛ ʙᴇ ᴜꜱᴇᴅ.",color:dark_red}
playsound block.note_block.bass master @s ~ ~ ~ 1 .5
clear @s *[container~{items:{contains:[{items:["splash_potion","lingering_potion"]}]}}]