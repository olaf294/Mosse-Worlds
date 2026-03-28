data modify storage legitermoose:code code.temp.message set from storage legitermoose:code code.stack[-1]

data remove storage legitermoose:code code.stack[-1]

function legitermoose:code/instructions/zzzprivate/print with storage legitermoose:code code.temp