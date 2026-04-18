# Get Time
execute store result score .time time run data get entity @p bukkit.lastPlayed .001

# Get seconds from Midnight
scoreboard players operation .seconds_midnight time = .time time
scoreboard players operation .seconds_midnight time %= 86400 numbers

# Get seconds
scoreboard players operation .seconds time = .seconds_midnight time
scoreboard players operation .seconds time %= 60 numbers

# Get minutes
scoreboard players operation .minutes time = .seconds_midnight time
scoreboard players operation .minutes time /= 60 numbers
scoreboard players operation .minutes time %= 60 numbers

# Get hours
scoreboard players operation .hours time = .seconds_midnight time
scoreboard players operation .hours time /= 3600 numbers

# Get UTC Hour
scoreboard players operation .hour_utc time = .seconds_midnight time
scoreboard players operation .hour_utc time /= 3600 numbers

# add hour offset
scoreboard players operation .hours time += .offset time
scoreboard players operation .hours time %= 24 numbers

# Set per player Hour
scoreboard players operation @s hour = .hour_utc time
scoreboard players operation @s hour += @s hour2
scoreboard players operation @s hour %= 24 numbers

function code:realtime/date
function code:realtime/update