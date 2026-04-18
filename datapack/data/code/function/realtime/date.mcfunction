# Days since Jan 1
execute store result score .date time run data get entity @p bukkit.lastPlayed 0.0000000115741
scoreboard players remove .date time 20453

# Months
scoreboard players set .month time 1
scoreboard players set .year time 2026

# Offset Day according to offset
scoreboard players operation .offset2 time = .offset time
scoreboard players operation .offset2 time += .hour_utc time

function code:realtime/offset_day

# Get Years
function code:realtime/year/nextyear