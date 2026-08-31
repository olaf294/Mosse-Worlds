scoreboard players remove .raycast_limit wc.values 1


execute unless block ~ ~ ~ #air run function wc:wand/private/get_pos/2

execute if block ~ ~ ~ #air if score .raycast_limit wc.values matches 1.. positioned ^ ^ ^.1 run function wc:wand/private/right_click/raycast/cast