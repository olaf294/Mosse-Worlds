$data remove storage legitermoose:code saves[{world_id:$(world_id)}]
$data modify storage legitermoose:code saves append value {world_id:$(world_id),bytecode:$(bytecode)}

$function legitermoose:code/run_event {world_id:$(world_id), event:"world_events_load"}