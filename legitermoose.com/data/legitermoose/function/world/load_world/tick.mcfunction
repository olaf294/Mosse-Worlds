# load lobby
execute as @a if items entity @s player.cursor *[custom_data~{lobby:1b}] run function legitermoose:triggers/lobby

# if you have items
execute as @a if items entity @s player.cursor *[custom_data~{world:1b}] run item replace block 993 54 8 container.0 from entity @s player.cursor
execute as @a if items entity @s player.cursor *[custom_data~{world:1b}] run function legitermoose:world/load_world/process_item with block 993 54 8 Items[{Slot:0b}].components.minecraft:custom_data."legitermoose.data"

#execute as @a if items entity @s player.cursor *[custom_data~{"legitermosse.playeridsearch":1b}] run item replace block 993 54 8 container.0 from entity @s player.cursor
execute as @a if items entity @s player.cursor *[custom_data~{"legitermosse.playeridsearch":1b}] run function legitermoose:world/search/playeridsearch

execute as @a if items entity @s player.cursor *[custom_data~{"legitermosse.worldidsearch":1b}] run function legitermoose:world/search/worldidsearch

clear @a[tag=!immune] *[custom_data~{ui:1b}]