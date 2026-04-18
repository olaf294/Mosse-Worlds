scoreboard players remove .raycast_limit wc.values 1

    # particle dust{color:16711680,scale:1} ~ ~ ~ 0 0 0 0 5 force

execute unless block ~ ~ ~ #air run function worldchanger:wand/private/left_click/hit_block

execute if block ~ ~ ~ #air if score .raycast_limit wc.values matches 1.. positioned ^ ^ ^.1 run function worldchanger:wand/private/left_click/raycast/cast