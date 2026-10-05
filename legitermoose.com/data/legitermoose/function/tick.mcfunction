# Welcome to Legitermoose.com Datapack. This is a terrible recreation of Legitimoose on Legitimoose.

## Player Count (only Lobby)
execute store result score .players legitermoose.misc if entity @a[tag=legitermoose.is_playing]

## Player Tick
execute as @a at @s run function legitermoose:player/tick

## Lobby Mannequinss
execute as @e[type=mannequin,tag=legitermoose.spawn,limit=2] at @s if entity @a[distance=..25] run rotate @s facing entity @p
execute as @e[type=mannequin,tag=legitermoose.spawn,limit=2] at @s unless entity @a[distance=..25] run rotate @s -90 0

## Entity Rules
kill @e[type=#legitermoose:forbidden_entities]
execute as @e[type=item] run function legitermoose:items/item_entity/check
execute as @e[type=ender_pearl] run function legitermoose:util/ender_pearls

## todo: fix this code and make it work again
 # execute as @a[tag=legitermoose.teleported,scores={legitermoose.tp_cd=..20}] run function legitermoose:world/load_world/tp_to_plot with storage legitermoose:temp plot_position