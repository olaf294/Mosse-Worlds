# Get Modulo
scoreboard players operation .mod_year time = .year time
scoreboard players operation .mod_year time %= 400 numbers

execute if score .mod_year time matches 0 run return run function code:realtime/year/leap
execute if score .mod_year time matches 100 run return run function code:realtime/year/notleap
execute if score .mod_year time matches 200 run return run function code:realtime/year/notleap
execute if score .mod_year time matches 300 run return run function code:realtime/year/notleap

scoreboard players operation .mod_year time %= 4 numbers

execute if score .mod_year time matches 0 run return run function code:realtime/year/leap

function code:realtime/year/notleap