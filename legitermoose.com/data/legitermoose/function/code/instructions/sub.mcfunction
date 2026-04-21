data modify storage legitermoose:code code.temp.A set from storage legitermoose:code code.stack[-2]
data modify storage legitermoose:code code.temp.B set from storage legitermoose:code code.stack[-1]

data remove storage legitermoose:code code.stack[-1]
data remove storage legitermoose:code code.stack[-1]

function legitermoose:code/instructions/zzzprivate/load_ab_into_score with storage legitermoose:code code.temp

scoreboard players operation $A code -= $B code
execute store result storage legitermoose:code code.temp.OUT int 1 run scoreboard players get $A code
data modify storage legitermoose:code code.stack append from storage legitermoose:code code.temp.OUT