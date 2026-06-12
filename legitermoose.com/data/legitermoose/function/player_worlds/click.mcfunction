execute unless items entity @s player.cursor *[custom_data~{world:1b}] run return 0

item replace entity @s enderchest.0 from entity @s player.cursor
execute store result score @s page run data get entity @s EnderItems[{Slot:0b}].components.minecraft:custom_data.world_id
function legitermoose:world_view/open