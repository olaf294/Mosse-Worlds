scoreboard players reset @s ads.config

execute if entity @s[tag=legitiads.debugview] run tellraw @s [{text:"LᴇɢɪᴛɪAᴅꜱ ",color:yellow},{text:"» ",color:dark_gray},{text:"Debug View: ",color:yellow},{text:"ᴅɪꜱᴀʙʟᴇᴅ",color:red}]
execute if entity @s[tag=legitiads.debugview] at @s run playsound block.note_block.bass ui @s ~ ~ ~ 1.5 1 0
execute if entity @s[tag=legitiads.debugview] run return run tag @s remove legitiads.debugview

tellraw @s [{text:"LᴇɢɪᴛɪAᴅꜱ ",color:yellow},{text:"» ",color:dark_gray},{text:"Debug View: ",color:yellow},{text:"ᴇɴᴀʙʟᴇᴅ",color:green}]
execute at @s run playsound block.note_block.pling ui @s ~ ~ ~ 1.5 1 0
tag @s add legitiads.debugview