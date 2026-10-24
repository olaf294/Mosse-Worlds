execute positioned 1000 64 0 as @s[distance=..300] run function legitermoose:items/no_gma_blocks

## Item Component Clears
execute if items entity @s code:all_slots *[entity_data~{Pos:[]} | damage_type] at @s run function legitermoose:items/clear/banned_components/worlds
execute if items entity @s[scores={worldid=0}] code:all_slots *[container~{items:{contains:[{items:["splash_potion","lingering_potion"]}]}}] run function legitermoose:items/clear/banned_components/lobby

execute if items entity @s code:all_slots *[container~{entity_data:{}}] run function legitermoose:items/clear/banned_components/worlds

## Item Type Clears
execute if items entity @s code:all_slots #legitermoose:forbidden_items run function legitermoose:items/clear/world_forbidden
execute if items entity @s[scores={worldid=0}] code:all_slots #legitermoose:lobby_forbidden_items run function legitermoose:items/clear/lobby_forbidden