execute if items entity @s player.cursor *[custom_data~{filter:1b}] run return run function legitermoose:world_browser/click/filter
execute if items entity @s player.cursor *[custom_data~{your_worlds:1b}] run return run function legitermoose:world_browser/click/your_worlds

execute store result score $pages page run data get storage legitermoose:worlds worlds
execute if score @s filter matches 5 store result score $pages page run data get storage legitermoose:world_browser featured
scoreboard players operation $pages page /= 18 numbers

execute if items entity @s player.cursor *[custom_data~{next_page:1b}] if score @s page < $pages page run scoreboard players add @s page 1
execute if items entity @s player.cursor *[custom_data~{previous_page:1b}] if score @s page matches 1.. run scoreboard players remove @s page 1
execute if items entity @s player.cursor *[custom_data~{last_page:1b}] run scoreboard players operation @s page = $pages page
execute if items entity @s player.cursor *[custom_data~{first_page:1b}] run scoreboard players set @s page 0


execute unless items entity @s player.cursor *[custom_data~{world:1b}] run return 0

item replace entity @s enderchest.0 from entity @s player.cursor
execute store result score @s page run data get entity @s EnderItems[{Slot:0b}].components.minecraft:custom_data.world_id
function legitermoose:world_view/open
playsound block.wooden_button.click_on