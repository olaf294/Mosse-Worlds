# TODO: Fix item sound not being removed. For now players will be annoying :sob:
# Mainhand
execute if items entity @s weapon.mainhand *[can_break] run item modify entity @s weapon.mainhand legitermoose:remove_can_break
execute if items entity @s weapon.mainhand *[can_place_on] run item modify entity @s weapon.mainhand legitermoose:remove_can_place
#execute unless items entity @s weapon.mainhand *[consumable~{sound:"minecraft:intentionally_empty"}] run item modify entity @s weapon.mainhand legitermoose:remove_sounds

# Offhand
execute if items entity @s weapon.offhand *[can_break] run item modify entity @s weapon.offhand legitermoose:remove_can_break
execute if items entity @s weapon.offhand *[can_place_on] run item modify entity @s weapon.offhand legitermoose:remove_can_place
#execute unless items entity @s weapon.mainhand *[consumable~{sound:"minecraft:intentionally_empty"}] run item modify entity @s weapon.offhand legitermoose:remove_sounds