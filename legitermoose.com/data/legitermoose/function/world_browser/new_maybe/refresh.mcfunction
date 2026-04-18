scoreboard players set page legitermoose.temp 1

scoreboard players set test legitermoose.temp 0
execute as @a unless score @s worldid matches 1.. run tag @s add sorted_world
data modify storage legitermoose:world_browser unsorted_worlds set from storage legitermoose:worlds worlds
data modify storage legitermoose:world_browser sorted set value []
function legitermoose:world_browser/new_maybe/refresh/sort
data remove storage legitermoose:world_browser unsorted_worlds

data modify storage legitermoose:world_browser pages set value [[]]
data modify storage legitermoose:world_browser page set value []
data modify storage legitermoose:world_browser worlds set from storage legitermoose:world_browser sorted
function legitermoose:world_browser/new_maybe/refresh/loop
execute if data storage legitermoose:world_browser page[0] run function legitermoose:world_browser/new_maybe/refresh/finish_page
scoreboard players reset page legitermoose.temp
data remove storage legitermoose:world_browser worlds
#data remove storage legitermoose:world_browser sorted
data remove storage legitermoose:world_browser page
tag @a remove sorted_world