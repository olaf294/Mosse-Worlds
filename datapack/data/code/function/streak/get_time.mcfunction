# store in the number score
scoreboard players operation .time ds.realtime = .time time

# get it as the day
scoreboard players operation .time ds.realtime /= #div_ratio ds.realtime

# get yesterday
execute store result score .yesterday ds.realtime run scoreboard players remove .time ds.realtime 1
scoreboard players add .time ds.realtime 1