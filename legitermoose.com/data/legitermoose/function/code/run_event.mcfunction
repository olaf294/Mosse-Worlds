$data modify storage legitermoose:code code.event set from storage legitermoose:code saves[{world_id: $(world_id)}].bytecode.$(event)
$data modify storage legitermoose:code code.extra_blocks set from storage legitermoose:code saves[{world_id: $(world_id)}].bytecode.extra_blocks
$data modify storage legitermoose:code code.temp.world_id set value $(world_id)

function legitermoose:code/event_loop