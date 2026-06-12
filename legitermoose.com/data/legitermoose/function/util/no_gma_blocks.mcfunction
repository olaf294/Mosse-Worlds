# Mainhand
execute if data entity @s SelectedItem.components.minecraft:can_break run item modify entity @s weapon.mainhand legitermoose:remove_can_break
execute if data entity @s SelectedItem.components.minecraft:can_place_on run item modify entity @s weapon.mainhand legitermoose:remove_can_place
execute if data entity @s SelectedItem.components.minecraft:consumable.sound run item modify entity @s weapon.mainhand legitermoose:remove_sounds

# Offhand
execute if data entity @s equipment.offhand.components.minecraft:can_break run item modify entity @s weapon.offhand legitermoose:remove_can_break
execute if data entity @s equipment.offhand.components.minecraft:can_place_on run item modify entity @s weapon.offhand legitermoose:remove_can_place
execute if data entity @s equipment.offhand.components.minecraft:consumable.sound run item modify entity @s weapon.offhand legitermoose:remove_sounds