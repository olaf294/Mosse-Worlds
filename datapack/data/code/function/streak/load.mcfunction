scoreboard objectives add ds.streak dummy "Daily Login Streak"
scoreboard objectives add ds.realtime dummy "Real Time"
scoreboard objectives add ds.prev_day dummy "Previous Login Day"

scoreboard players set #div_ratio ds.realtime 86400
scoreboard players set #m1 ds.realtime -1