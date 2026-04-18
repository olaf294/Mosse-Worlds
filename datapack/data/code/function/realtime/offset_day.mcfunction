execute if score .offset2 time matches ..-1 run scoreboard players remove .date time 1
execute if score .offset2 time matches ..-1 run scoreboard players add .offset2 time 24
execute if score .offset2 time matches ..-1 run return run function code:realtime/offset_day

execute if score .offset2 time matches 24.. run scoreboard players add .date time 1
execute if score .offset2 time matches 24.. run scoreboard players remove .offset2 time 24
execute if score .offset2 time matches 24.. run return run function code:realtime/offset_day