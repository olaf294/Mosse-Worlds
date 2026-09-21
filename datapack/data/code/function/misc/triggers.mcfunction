# Toggle Info 
scoreboard players enable @s toggle_info
execute as @s[scores={toggle_info=1..}] at @s run function code:toggle_info/toggle
scoreboard players reset @s[tag=legitermoose.is_playing] toggle_info

scoreboard players enable @s offset
execute unless score @s offset matches 0 run function code:realtime/offset/display

scoreboard players enable @s[scores={worldid=-1..0}] minimal_lobby
execute as @s[scores={minimal_lobby=1..}] run function code:misc/toggle_lobby_type
execute unless score @s worldid matches -1..0 run scoreboard players reset @s minimal_lobby
scoreboard players reset @s[scores={minimal_lobby=1..}] minimal_lobby