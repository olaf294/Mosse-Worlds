summon item ~ ~ ~ {Item:{id:"structure_void", components:{custom_data:{no_ground:1b}}}, Tags:[temp_item]}
$item replace entity @n[type=item,tag=temp_item] container.0 from entity @s enderchest.$(slot)
data modify entity @n[type=item,tag=temp_item] Owner set from entity @s UUID
tag @e[type=item,tag=temp_item] remove temp_item