# trigger tick
function legitermoose:triggers/tick
execute positioned 1000 64 0 as @s[distance=..250] run function legitermoose:util/no_gma_blocks
function legitermoose:util/gm/world_gm

execute if score @s join matches 1.. run function legitermoose:player/join

execute if items entity @s player.cursor *[custom_data~{custom_ui:true}] run function legitermoose:ui/handle_click
execute store result score $amount ui run clear @s *[custom_data~{custom_ui:true}]
execute unless score $amount ui matches 0 run function legitermoose:ui/render_ui
execute unless score @s ui matches 0 if predicate legitermoose:out_of_ui if score @s time_since_open matches 10.. run function legitermoose:ui/close

scoreboard players add @s time_since_open 1

stopsound @s * block.end_portal.spawn