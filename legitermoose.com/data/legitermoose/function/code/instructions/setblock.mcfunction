data modify storage legitermoose:code code.temp.X set from storage legitermoose:code code.stack[-4]
data modify storage legitermoose:code code.temp.Y set from storage legitermoose:code code.stack[-3]
data modify storage legitermoose:code code.temp.Z set from storage legitermoose:code code.stack[-2]
data modify storage legitermoose:code code.temp.BLOCK set from storage legitermoose:code code.stack[-1]

data remove storage legitermoose:code code.stack[-4]
data remove storage legitermoose:code code.stack[-3]
data remove storage legitermoose:code code.stack[-2]
data remove storage legitermoose:code code.stack[-1]

function legitermoose:code/instructions/zzzprivate/setblock with storage legitermoose:code code.temp