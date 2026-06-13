# store in the number score
scoreboard players operation .day ds.realtime = .time time

# get it as the day
scoreboard players operation .day ds.realtime /= #div_ratio ds.realtime

# get yesterday
execute store result score .yesterday ds.realtime run scoreboard players remove .day ds.realtime 1
scoreboard players add .day ds.realtime 1

function code:streak/check_day