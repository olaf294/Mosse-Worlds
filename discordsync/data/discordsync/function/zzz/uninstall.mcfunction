data remove storage discordsync:data data
data remove storage discordsync:data body
data remove storage discordsync:data header

data remove storage discordsync:data cm
data remove storage discordsync:data messages
data remove storage discordsync:data user

data remove storage discordsync:data playerlist

data remove storage discordsync:data temp

scoreboard objectives remove ds.id
scoreboard objectives remove ds.rejoin
scoreboard objectives remove ds.config
scoreboard objectives remove ds.style

kill e-0-0-0-e
setblock 1000 49 4 air
setblock 1000 50 5 air
setblock 1000 50 6 air
forceload remove 990 10