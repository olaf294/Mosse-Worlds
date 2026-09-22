# TODO: Fix item sound not being removed. For now players will be annoying :sob:
# Mainhand and offhand
execute if items entity @s weapon.* *[can_break] run item modify entity @s weapon.* legitermoose:remove_can_break
execute if items entity @s weapon.* *[can_place_on] run item modify entity @s weapon.* legitermoose:remove_can_place
#execute unless items entity @s weapon.* *[consumable~{sound:"minecraft:intentionally_empty"}] run item modify entity @s weapon.* legitermoose:remove_sounds