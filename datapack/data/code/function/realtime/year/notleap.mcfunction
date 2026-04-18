# January
execute unless score .date time matches 32.. run return run scoreboard players operation .day time = .date time
execute if score .date time matches 32.. run scoreboard players add .month time 1
execute if score .date time matches 32.. run scoreboard players remove .date time 31

# February
execute unless score .date time matches 29.. run return run scoreboard players operation .day time = .date time
execute if score .date time matches 29.. run scoreboard players add .month time 1
execute if score .date time matches 29.. run scoreboard players remove .date time 28

# March
execute unless score .date time matches 32.. run return run scoreboard players operation .day time = .date time
execute if score .date time matches 32.. run scoreboard players add .month time 1
execute if score .date time matches 32.. run scoreboard players remove .date time 31

# April
execute unless score .date time matches 31.. run return run scoreboard players operation .day time = .date time
execute if score .date time matches 31.. run scoreboard players add .month time 1
execute if score .date time matches 31.. run scoreboard players remove .date time 30

# May
execute unless score .date time matches 32.. run return run scoreboard players operation .day time = .date time
execute if score .date time matches 32.. run scoreboard players add .month time 1
execute if score .date time matches 32.. run scoreboard players remove .date time 31

# June
execute unless score .date time matches 31.. run return run scoreboard players operation .day time = .date time
execute if score .date time matches 31.. run scoreboard players add .month time 1
execute if score .date time matches 31.. run scoreboard players remove .date time 30

# July
execute unless score .date time matches 32.. run return run scoreboard players operation .day time = .date time
execute if score .date time matches 32.. run scoreboard players add .month time 1
execute if score .date time matches 32.. run scoreboard players remove .date time 31

# August
execute unless score .date time matches 32.. run return run scoreboard players operation .day time = .date time
execute if score .date time matches 32.. run scoreboard players add .month time 1
execute if score .date time matches 32.. run scoreboard players remove .date time 31

# September
execute unless score .date time matches 31.. run return run scoreboard players operation .day time = .date time
execute if score .date time matches 31.. run scoreboard players add .month time 1
execute if score .date time matches 31.. run scoreboard players remove .date time 30

# October
execute unless score .date time matches 32.. run return run scoreboard players operation .day time = .date time
execute if score .date time matches 32.. run scoreboard players add .month time 1
execute if score .date time matches 32.. run scoreboard players remove .date time 31

# November
execute unless score .date time matches 31.. run return run scoreboard players operation .day time = .date time
execute if score .date time matches 31.. run scoreboard players add .month time 1
execute if score .date time matches 31.. run scoreboard players remove .date time 30

# December
execute unless score .date time matches 32.. run return run scoreboard players operation .day time = .date time
execute if score .date time matches 32.. run scoreboard players set .day time 1
execute if score .date time matches 32.. run scoreboard players set .month time 1
execute if score .date time matches 32.. run scoreboard players add .year time 1
execute if score .date time matches 32.. run scoreboard players remove .date time 31

function code:realtime/year/nextyear