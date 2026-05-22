function legitermoose:ui/return_items

execute if score @s ui matches 1 run return run function legitermoose:player_worlds/render
execute if score @s ui matches 2 run return run function legitermoose:world_browser/render
execute if score @s ui matches 3 run return run function legitermoose:world_view/render