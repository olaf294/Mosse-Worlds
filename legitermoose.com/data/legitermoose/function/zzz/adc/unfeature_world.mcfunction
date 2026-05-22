# args:
#   world_id: world id to be unfeatured

$data remove storage legitermoose:worlds worlds[{world_id:$(world_id)}].featured
$data remove storage legitermoose:worlds worlds[{world_id:$(world_id)}].is_featured
$data remove storage legitermoose:world_browser featured[{world_id:$(world_id)}]