# Advanced Config
execute as @s[scores={ads.config=1111}] run return run function ads:config/dialog/init

# Ad Debugger
execute as @s[scores={ads.config=1222}] run return run function ads:toggle_debugview

# Ads
execute as @s[scores={ads.config=1000}] at @s run playsound block.note_block.pling ui @s ~ ~ ~ 0.8 2 0
tellraw @s[scores={ads.config=1000}] [{text:"LᴇɢɪᴛɪAᴅꜱ ",color:yellow},{text:"» ",color:dark_gray},{text:"Ads have been enabled.",color:green}]
execute as @s[scores={ads.config=1000}] run return run scoreboard players set .ads_enabled ads.config 1

execute as @s[scores={ads.config=1001}] at @s run playsound block.note_block.bass ui @s ~ ~ ~ 1.5 1 0
tellraw @s[scores={ads.config=1001}] [{text:"LᴇɢɪᴛɪAᴅꜱ ",color:yellow},{text:"» ",color:dark_gray},{text:"Ads have been disabled.",color:red}]
execute as @s[scores={ads.config=1001}] run return run scoreboard players set .ads_enabled ads.config 0

# Rank Advantage
execute as @s[scores={ads.config=1010}] at @s run playsound block.note_block.pling ui @s ~ ~ ~ 0.8 2 0
tellraw @s[scores={ads.config=1010}] [{text:"LᴇɢɪᴛɪAᴅꜱ ",color:yellow},{text:"» ",color:dark_gray},{text:"Rank Advantage has been enabled.",color:green}]
execute as @s[scores={ads.config=1010}] run return run scoreboard players set .rank_difference ads.config 1

execute as @s[scores={ads.config=1011}] at @s run playsound block.note_block.bass ui @s ~ ~ ~ 1.5 1 0
tellraw @s[scores={ads.config=1011}] [{text:"LᴇɢɪᴛɪAᴅꜱ ",color:yellow},{text:"» ",color:dark_gray},{text:"Rank Advantage has been disabled.",color:red}]
execute as @s[scores={ads.config=1011}] run return run scoreboard players set .rank_difference ads.config 0

# Ad Sounds
execute as @s[scores={ads.config=1020}] at @s run playsound block.note_block.pling ui @s ~ ~ ~ 0.8 2 0
tellraw @s[scores={ads.config=1020}] [{text:"LᴇɢɪᴛɪAᴅꜱ ",color:yellow},{text:"» ",color:dark_gray},{text:"Ad Sounds have been enabled.",color:green}]
execute as @s[scores={ads.config=1020}] run return run scoreboard players set .ad_sound ads.config 1

execute as @s[scores={ads.config=1021}] at @s run playsound block.note_block.bass ui @s ~ ~ ~ 1.5 1 0
tellraw @s[scores={ads.config=1021}] [{text:"LᴇɢɪᴛɪAᴅꜱ ",color:yellow},{text:"» ",color:dark_gray},{text:"Ad Sounds have been disabled.",color:red}]
execute as @s[scores={ads.config=1021}] run return run scoreboard players set .ad_sound ads.config 0

# Ads on Load
execute as @s[scores={ads.config=1030}] at @s run playsound block.note_block.pling ui @s ~ ~ ~ 0.8 2 0
tellraw @s[scores={ads.config=1030}] [{text:"LᴇɢɪᴛɪAᴅꜱ ",color:yellow},{text:"» ",color:dark_gray},{text:"Ads on Load have been enabled.",color:green}]
execute as @s[scores={ads.config=1030}] run return run scoreboard players set .ads_on_load ads.config 1

execute as @s[scores={ads.config=1031}] at @s run playsound block.note_block.bass ui @s ~ ~ ~ 1.5 1 0
tellraw @s[scores={ads.config=1031}] [{text:"LᴇɢɪᴛɪAᴅꜱ ",color:yellow},{text:"» ",color:dark_gray},{text:"Ads on Load have been disabled.",color:red}]
execute as @s[scores={ads.config=1031}] run return run scoreboard players set .ads_on_load ads.config 0

# Ad Order
execute as @s[scores={ads.config=1040}] at @s run playsound block.note_block.hat ui @s ~ ~ ~ 0.8 1 0
tellraw @s[scores={ads.config=1040}] [{text:"LᴇɢɪᴛɪAᴅꜱ ",color:yellow},{text:"» ",color:dark_gray},{text:"Ad Order set to Rᴀɴᴅᴏᴍ.",color:yellow}]
execute as @s[scores={ads.config=1040}] run return run scoreboard players set .random_ads ads.config 1

execute as @s[scores={ads.config=1041}] at @s run playsound block.note_block.hat ui @s ~ ~ ~ 1.5 1 0
tellraw @s[scores={ads.config=1041}] [{text:"LᴇɢɪᴛɪAᴅꜱ ",color:yellow},{text:"» ",color:dark_gray},{text:"Ad Order set to Oʀᴅᴇʀᴇᴅ.",color:yellow}]
execute as @s[scores={ads.config=1041}] run return run scoreboard players set .random_ads ads.config 0

# Ads on Join
execute as @s[scores={ads.config=1050}] at @s run playsound block.note_block.pling ui @s ~ ~ ~ 0.8 2 0
tellraw @s[scores={ads.config=1050}] [{text:"LᴇɢɪᴛɪAᴅꜱ ",color:yellow},{text:"» ",color:dark_gray},{text:"Ads on Join have been enabled.",color:green}]
execute as @s[scores={ads.config=1050}] run return run scoreboard players set .ads_on_join ads.config 1

execute as @s[scores={ads.config=1051}] at @s run playsound block.note_block.bass ui @s ~ ~ ~ 1.5 1 0
tellraw @s[scores={ads.config=1051}] [{text:"LᴇɢɪᴛɪAᴅꜱ ",color:yellow},{text:"» ",color:dark_gray},{text:"Ads on Join have been disabled.",color:red}]
execute as @s[scores={ads.config=1051}] run return run scoreboard players set .ads_on_join ads.config 0