data modify storage legitermoose:code code.temp.IN set from storage legitermoose:code code.stack[-1]
data remove storage legitermoose:code code.stack[-1]

execute if data storage legitermoose:code code.temp{IN:0} run return 0

data modify storage legitermoose:code code.temp.index set from storage legitermoose:code code.instruction[1]
function legitermoose:code/instructions/zzzprivate/load_block with storage legitermoose:code code.temp