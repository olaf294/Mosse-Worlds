# Welcome to Legitermoose.com Datapack. This is a terrible recreation of Legitimoose on Legitimoose.
# Player Count (only Lobby)
execute store result score .players legitermoose.misc if entity @a[tag=legitermoose.is_playing]

# Leave Server
execute as @a[predicate=code:is_y_below_40,tag=legitermoose.is_playing] run function legitermoose:lobby/join/rank_leave
tp @a[predicate=code:is_y_below_40] 0 64 0 0 8

function legitermoose:code/tick/_

# Lobby Mannequinss
execute as @e[type=mannequin,tag=legitermoose.spawn] at @s if entity @a[distance=..25] run rotate @s facing entity @p
execute as @e[type=mannequin,tag=legitermoose.spawn] at @s unless entity @a[distance=..25] run rotate @s -90 0

# Forbidden Items
clear @a[tag=!is_admin] #legitermoose:forbidden_items
clear @a[tag=!is_admin,scores={worldid=0}] #legitermoose:lobby_forbidden_items

kill @e[type=#legitermoose:forbidden_entities]
execute as @e[type=item] if items entity @s contents *[custom_data~{world_browser:1b} | custom_data~{ui:1b } | custom_data~{custom_ui:1b}] run kill @s
execute as @e[type=item] if items entity @s contents #legitermoose:forbidden_items run kill @s
execute positioned 1000 64 0 as @e[type=item,distance=..300] if items entity @s contents #legitermoose:lobby_forbidden_items run kill @s

# Teleporting - THIS IS BROKEN, NEED TO REPLACE. (bug: world browser tps to incorrect world)
    #execute as @a[tag=legitermoose.teleported,scores={legitermoose.tp_cd=..20}] run function legitermoose:world/load_world/tp_to_plot with storage legitermoose:temp plot_position

# rejoin detection
execute as @a[scores={leave=1..}] run function legitermoose:util/leave

# Player Tick
execute as @a at @s run function legitermoose:player/tick

# Spawn Tick stuff
execute positioned 1000 64 0 as @a[distance=..300] run function legitermoose:lobby/lobby_tick
execute positioned 0 64 0 as @a[distance=300..] run function legitermoose:mosse/not_spawn
#execute positioned 0 64 0 as @a[distance=..300] run function legitermoose:mosse/enter_spawn    # no longer needed — runs on falling out of the world or on join

execute as @e[type=ender_pearl] run function legitermoose:util/ender_pearls