data modify storage legitermoose:code code.temp.player_id set from storage legitermoose:code code.stack[-2]
data modify storage legitermoose:code code.temp.message set from storage legitermoose:code code.stack[-1]

data remove storage legitermoose:code code.stack[-2]
data remove storage legitermoose:code code.stack[-1]

function legitermoose:code/instructions/zzzprivate/tell with storage legitermoose:code code.temp