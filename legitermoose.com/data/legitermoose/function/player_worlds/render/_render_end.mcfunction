execute unless score @s page = @s id run return 0

execute unless score @s page = @s id run return 0

$item replace entity @s enderchest.$(slot) with dirt[custom_data={custom_ui:1b}]
$execute if score $tmp page < @s legitermoose.world_slots run return run item modify entity @s enderchest.$(slot) legitermoose:player_worlds/create_new_world
$item modify entity @s enderchest.$(slot) legitermoose:player_worlds/out_of_space