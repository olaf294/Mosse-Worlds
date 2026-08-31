# 1. If the player has already logged in today:
execute if score @s ds.prev_day = .day ds.realtime run return fail

# 2. If the player has logged in yesterday:
execute if score @s ds.prev_day = .yesterday ds.realtime run scoreboard players add @s ds.streak 1
execute if score @s ds.prev_day = .yesterday ds.realtime run tellraw @s [{text:"Yᴏᴜ ʜᴀᴠᴇ ɪɴᴄʀᴇᴀꜱᴇᴅ ʏᴏᴜʀ ᴅᴀɪʟʏ ꜱᴛʀᴇᴀᴋ ʙʏ 1!\nYᴏᴜʀ ᴄᴜʀʀᴇɴᴛ ꜱᴛʀᴇᴀᴋ: ",color:gold},{score:{name:"@s",objective:ds.streak},color:aqua}]

# 3. If the player has NOT logged in yesterday:
execute if score @s ds.prev_day < .yesterday ds.realtime run tellraw @s [{text:"Oʜ ɴᴏ! Yᴏᴜ ʜᴀᴠᴇ ʟᴏꜱᴛ ʏᴏᴜʀ ᴅᴀɪʟʏ ꜱᴛʀᴇᴀᴋ ᴏꜰ ",color:red},{score:{name:"@s",objective:ds.streak},color:aqua},{text:". Hᴏᴡ ᴜɴꜰᴏʀᴛᴜɴᴀᴛᴇ!",color:red}]
execute if score @s ds.prev_day < .yesterday ds.realtime run scoreboard players set @s ds.streak 1

# 4. If the player doesn't have a previous day:
execute unless score @s ds.prev_day matches -2147483648..2147483647 run function code:streak/init_streak

# 5. For all players:
scoreboard players operation @s ds.prev_day = .day ds.realtime