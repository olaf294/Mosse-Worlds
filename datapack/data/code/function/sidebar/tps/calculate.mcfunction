schedule function code:sidebar/tps/calculate 100t replace

execute store result score .time tps run stopwatch query sidebar:tps 100
scoreboard players set .tps tps 1000000
scoreboard players operation .tps tps /= .time tps

# tps
scoreboard players operation .tps_i tps = .tps tps
scoreboard players operation .tps_i tps /= 100 numbers
scoreboard players operation .tps_f tps = .tps tps
scoreboard players operation .tps_f tps /= 10 numbers
scoreboard players operation .tps_f tps %= 10 numbers

# reset 
scoreboard players set .tps tps 0
stopwatch restart sidebar:tps


# update sidebar
function code:sidebar/tps/update_sidebar