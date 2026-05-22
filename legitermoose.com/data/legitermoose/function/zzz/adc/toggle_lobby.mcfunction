execute if entity @s[tag=!is_dev] run return run tellraw @a[tag=is_admin] [{text:"Lᴏʙʙʏ ᴄᴀɴɴᴏᴛ ʙᴇ ᴛᴏɢɢʟᴇᴅ ʙʏ "},{selector:"@s"},{text:", ᴀꜱ ᴛʜᴇʏ ᴀʀᴇ ɴᴏᴛ ᴀ ᴅᴇᴠ."}]

execute if score .lobby_enabled legitermoose.misc matches 0 run tellraw @a[tag=is_admin] {text:"Lᴏʙʙʏ ʜᴀꜱ ʙᴇᴇɴ ᴇɴᴀʙʟᴇᴅ.",color:green}
execute if score .lobby_enabled legitermoose.misc matches 1 run tellraw @a[tag=is_admin] {text:"Lᴏʙʙʏ ʜᴀꜱ ʙᴇᴇɴ ᴅɪꜱᴀʙʟᴇᴅ.",color:red}

execute if score .lobby_enabled legitermoose.misc matches 0 run return run scoreboard players set .lobby_enabled legitermoose.misc 1
scoreboard players set .lobby_enabled legitermoose.misc 0
tp @a[tag=legitermoose.is_playing] 0 64 0
clear @a[tag=legitermoose.is_playing]
effect clear @a[tag=legitermoose.is_playing]
tag @a[tag=legitermoose.is_playing] remove legitermoose.is_playing