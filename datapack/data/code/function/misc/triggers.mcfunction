# Toggle Info 
scoreboard players enable @s toggle_info
execute as @s[scores={toggle_info=1..}] at @s run function code:toggle_info/toggle
scoreboard players reset @s[tag=legitermoose.is_playing] toggle_info

scoreboard players enable @s offset
execute unless score @s offset = @s hour2 run function code:realtime/update_offset