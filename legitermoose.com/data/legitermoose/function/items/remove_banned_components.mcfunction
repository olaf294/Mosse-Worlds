execute positioned 1000 64 0 as @s[distance=..300] run function legitermoose:items/no_gma_blocks

## Entity Data, Damage Type
execute if items entity @s code:all_slots *[entity_data~{Pos:[]} | damage_type] at @s run function legitermoose:items/clear/banned_components

## Generic clears
execute if items entity @s code:all_slots #legitermoose:forbidden_items run function legitermoose:items/clear/world_forbidden
execute if items entity @s[scores={worldid=0}] code:all_slots #legitermoose:lobby_forbidden_items run function legitermoose:items/clear/lobby_forbidden