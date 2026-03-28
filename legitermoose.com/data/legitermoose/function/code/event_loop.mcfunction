execute unless data storage legitermoose:code code.event[] run return 1

data modify storage legitermoose:code code.instructions set from storage legitermoose:code code.event[0]
data remove storage legitermoose:code code.event[0]

data modify storage legitermoose:code code.stack set value []
function legitermoose:code/run_set

function legitermoose:code/event_loop