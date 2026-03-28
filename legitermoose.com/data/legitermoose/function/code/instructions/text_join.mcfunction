data modify storage legitermoose:code code.temp.A set from storage legitermoose:code code.stack[-2]
data modify storage legitermoose:code code.temp.B set from storage legitermoose:code code.stack[-1]

data remove storage legitermoose:code code.stack[-2]
data remove storage legitermoose:code code.stack[-1]

function legitermoose:code/instructions/zzzprivate/join with storage legitermoose:code code.temp
data modify storage legitermoose:code code.stack append from storage legitermoose:code code.temp.OUT