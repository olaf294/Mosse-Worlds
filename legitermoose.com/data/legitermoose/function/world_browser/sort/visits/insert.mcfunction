data modify storage legitermoose:world_browser sorted.tmp set value {}
data modify storage legitermoose:world_browser sorted.tmp.visits set from storage legitermoose:world_browser sorted.temp[0].visits
data modify storage legitermoose:world_browser sorted.tmp.world_id set from storage legitermoose:world_browser sorted.temp[0].world_id

$data modify storage legitermoose:world_browser sorted.visits insert $(offset) from storage legitermoose:world_browser sorted.tmp
data remove storage legitermoose:world_browser sorted.temp[0]