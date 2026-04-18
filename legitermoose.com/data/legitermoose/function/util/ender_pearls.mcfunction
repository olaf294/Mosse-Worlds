execute store result score @s legitermoose.temp run data get entity @s Motion[0] 10
execute store result score .add legitermoose.temp run data get entity @s Motion[1] 10
execute if score .add legitermoose.temp matches ..-1 run scoreboard players operation .add legitermoose.temp *= -1 numbers
scoreboard players operation @s legitermoose.temp += .add legitermoose.temp
execute store result score .add legitermoose.temp run data get entity @s Motion[2] 10
execute if score .add legitermoose.temp matches ..-1 run scoreboard players operation .add legitermoose.temp *= -1 numbers
scoreboard players operation @s legitermoose.temp += .add legitermoose.temp

execute if score @s legitermoose.temp matches 50 run scoreboard players reset @s
execute if score @s legitermoose.temp matches 50 run kill @s