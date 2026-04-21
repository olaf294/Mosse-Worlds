data modify storage legitermoose:code code.temp.A set from storage legitermoose:code code.stack[-1]
data modify storage legitermoose:code code.temp.B set from storage legitermoose:code code.stack[-2]
data remove storage legitermoose:code code.stack[-1]
data remove storage legitermoose:code code.stack[-1]

execute unless data storage legitermoose:code code.temp{A:0} unless data storage legitermoose:code code.temp{B:0} run return run data modify storage legitermoose:code code.stack append value 1
data modify storage legitermoose:code code.stack append value 0