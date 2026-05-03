$data modify storage legitermoose:code code.event set from storage legitermoose:code saves[{world_id: $(world_id)}].bytecode.$(event)
$data modify storage legitermoose:code code.extra_blocks set from storage legitermoose:code saves[{world_id: $(world_id)}].bytecode.extra_blocks
$data modify storage legitermoose:code code.temp.world_id set value $(world_id)
$data modify storage legitermoose:code code.temp.x_center set from storage legitermoose:worlds worlds[{world_id:$(world_id)}].custom_data."legitermoose.data".plot_position.x
execute if data storage legitermoose:code code.temp{world_id:-8} run data modify storage legitermoose:code code.temp.x_center set value 1000

function legitermoose:code/event_loop