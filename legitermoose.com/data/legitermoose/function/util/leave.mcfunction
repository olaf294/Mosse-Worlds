# basically this is the On World Join function
tellraw @s {text:"Wᴇʟᴄᴏᴍᴇ ʙᴀᴄᴋ!",color:blue}
tag @s remove legitermoose.is_playing
tp @s 0 64 0 0 8
gamemode adventure @s[tag=!is_admin]
clear @s
scoreboard players reset @s leave