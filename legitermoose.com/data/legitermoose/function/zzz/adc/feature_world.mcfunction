# args:
#   world_id    (int)   : world id to be unfeatured
#   date        (str)   : string to display as date

$execute if data storage legitermoose:world_browser featured[{world_id:$(world_id)}] run return run tellraw @s {"text": "World already featured!", color:"red"}

$data modify storage legitermoose:worlds worlds[{world_id:$(world_id)}].featured set value "$(date)"
$data modify storage legitermoose:worlds worlds[{world_id:$(world_id)}].is_featured set value 1b
$data modify storage legitermoose:world_browser featured prepend value {world_id:$(world_id)}