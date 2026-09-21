execute unless score @s wc.pos1_x matches -2147483648..2147483647 unless score @s wc.pos2_x matches -2147483648..2147483647 run return fail

# pos1
execute store result storage wc:blocks particle.x int 1 run scoreboard players get @s wc.pos1_x
execute store result storage wc:blocks particle.y int 1 run scoreboard players get @s wc.pos1_y
execute store result storage wc:blocks particle.z int 1 run scoreboard players get @s wc.pos1_z
execute at @s run function wc:wand/private/particle/prep/1 with storage wc:blocks particle

# pos2
execute store result storage wc:blocks particle.x int 1 run scoreboard players get @s wc.pos2_x
execute store result storage wc:blocks particle.y int 1 run scoreboard players get @s wc.pos2_y
execute store result storage wc:blocks particle.z int 1 run scoreboard players get @s wc.pos2_z
execute at @s run function wc:wand/private/particle/prep/2 with storage wc:blocks particle