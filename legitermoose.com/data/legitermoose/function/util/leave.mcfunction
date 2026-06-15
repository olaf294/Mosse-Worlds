# basically this is the On World Join function (ON JOINING THE WORLD FROM REAL LOBBY)
function code:offline_time/on_join

scoreboard players reset @s leave

tellraw @s {text:"Wᴇʟᴄᴏᴍᴇ ʙᴀᴄᴋ!",color:blue}
tag @s remove legitermoose.is_playing
tp @s 0 64 0 0 8
gamemode adventure @s[tag=!is_admin]
clear @s
scoreboard players set @s wait -1
team join z_spawn @s[team=player]