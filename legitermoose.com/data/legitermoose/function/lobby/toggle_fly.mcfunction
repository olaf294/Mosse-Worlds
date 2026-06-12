scoreboard players reset @s fly

execute if data entity @s {abilities:{mayfly:0b}} run tellraw @s {text:"You can now fly!",color:green}
execute if data entity @s {abilities:{mayfly:0b}} run return run data modify entity @s abilities.mayfly set value 1b

tellraw @s {text:"You can no longer fly!",color:green}
data merge entity @s {abilities:{flying:0b, mayfly:0b}}