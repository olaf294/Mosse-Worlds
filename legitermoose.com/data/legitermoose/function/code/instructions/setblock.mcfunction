data modify storage legitermoose:code code.temp.X set from storage legitermoose:code code.stack[-4]
data modify storage legitermoose:code code.temp.Y set from storage legitermoose:code code.stack[-3]
data modify storage legitermoose:code code.temp.Z set from storage legitermoose:code code.stack[-2]
data modify storage legitermoose:code code.temp.BLOCK set from storage legitermoose:code code.stack[-1]

data remove storage legitermoose:code code.stack[-4]
data remove storage legitermoose:code code.stack[-3]
data remove storage legitermoose:code code.stack[-2]
data remove storage legitermoose:code code.stack[-1]

function legitermoose:code/instructions/zzzprivate/load_x_to_score with storage legitermoose:code code.temp

execute unless score $X code matches -500..500 run return 0

execute store result score $x_center code run data get storage legitermoose:code code.temp.x_center
scoreboard players operation $X code += $x_center code
execute store result storage legitermoose:code code.temp.X int 1 run scoreboard players get $X code

function legitermoose:code/instructions/zzzprivate/setblock with storage legitermoose:code code.temp