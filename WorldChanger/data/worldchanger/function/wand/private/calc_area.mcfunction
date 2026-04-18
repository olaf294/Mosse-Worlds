scoreboard players operation .pos1x wc.values = @s wc.pos1_x
scoreboard players operation .pos1y wc.values = @s wc.pos1_y
scoreboard players operation .pos1z wc.values = @s wc.pos1_z
scoreboard players operation .pos2x wc.values = @s wc.pos2_x
scoreboard players operation .pos2y wc.values = @s wc.pos2_y
scoreboard players operation .pos2z wc.values = @s wc.pos2_z

scoreboard players operation .delta_x wc.values = .pos1x wc.values
scoreboard players operation .delta_x wc.values -= .pos2x wc.values
execute if score .delta_x wc.values matches ..-1 run scoreboard players operation .delta_x wc.values *= -1 wc.nums
scoreboard players add .delta_x wc.values 1

scoreboard players operation .delta_y wc.values = .pos1y wc.values
scoreboard players operation .delta_y wc.values -= .pos2y wc.values
execute if score .delta_y wc.values matches ..-1 run scoreboard players operation .delta_y wc.values *= -1 wc.nums
scoreboard players add .delta_y wc.values 1

scoreboard players operation .delta_z wc.values = .pos1z wc.values
scoreboard players operation .delta_z wc.values -= .pos2z wc.values
execute if score .delta_z wc.values matches ..-1 run scoreboard players operation .delta_z wc.values *= -1 wc.nums
scoreboard players add .delta_z wc.values 1

scoreboard players operation .total_area wc.values = .delta_x wc.values
scoreboard players operation .total_area wc.values *= .delta_y wc.values
scoreboard players operation .total_area wc.values *= .delta_z wc.values