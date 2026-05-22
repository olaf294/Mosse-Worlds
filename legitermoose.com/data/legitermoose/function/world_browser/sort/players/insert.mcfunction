data modify storage legitermoose:world_browser sorted.tmp set value {}
execute store result storage legitermoose:world_browser sorted.tmp.players int 1 run scoreboard players get $players page
data modify storage legitermoose:world_browser sorted.tmp.world_id set from storage legitermoose:world_browser sorted.temp[0].world_id

$data modify storage legitermoose:world_browser sorted.players insert $(offset) from storage legitermoose:world_browser sorted.tmp
data remove storage legitermoose:world_browser sorted.temp[0]