data modify storage legitermoose:code code.temp.A set from storage legitermoose:code code.stack[-2]
data modify storage legitermoose:code code.temp.B set from storage legitermoose:code code.stack[-1]
data remove storage legitermoose:code code.stack[-1]
data remove storage legitermoose:code code.stack[-1]

function legitermoose:code/instructions/zzzprivate/equal with storage legitermoose:code code.temp

execute unless data storage legitermoose:code code.temp{OUT:0} run return run data modify storage legitermoose:code code.stack append value 0
data modify storage legitermoose:code code.stack append value 1