# 1. If the player has already logged in today:
execute if score @s ds.prev_day = .time ds.realtime run return fail

# 2. If the player has logged in yesterday:
execute if score @s ds.prev_day = .yesterday ds.realtime run scoreboard players add @s ds.streak 1
    #execute if score @s ds.prev_day = .yesterday ds.realtime run function code:daily_streak/ui/open
execute if score @s ds.prev_day = .yesterday ds.realtime run tellraw @s [{text:"You have increased your daily streak by 1!\nYour current streak: ",color:gold},{score:{name:"@s",objective:ds.streak},color:aqua}]

# 3. If the player has NOT logged in yesterday:
execute if score @s ds.prev_day < .yesterday ds.realtime run tellraw @s [{text:"Oh no! You have lost your daily streak of ",color:red},{score:{name:"@s",objective:ds.streak},color:aqua},{text:". How unfortunate!",color:red}]
execute if score @s ds.prev_day < .yesterday ds.realtime run scoreboard players set @s ds.streak 1
    #execute if score @s ds.prev_day < .yesterday ds.realtime run function code:daily_streak/ui/open

# 4. If the player doesn't have a previous day:
execute unless score @s ds.prev_day matches -2147483648..2147483647 run tellraw @s [{text:"You have increased your daily streak by 1!\nYour current streak: ",color:gold},{text:"1",color:aqua}]
execute unless score @s ds.prev_day matches -2147483648..2147483647 run scoreboard players set @s ds.streak 1
execute unless score @s ds.prev_day matches -2147483648..2147483647 run scoreboard players operation @s ds.prev_day = .time ds.realtime

# 5. For all players:
scoreboard players operation @s ds.prev_day = .time ds.realtime