execute if predicate wc:is_sneaking if items entity @s weapon.mainhand poisonous_potato[custom_data~{wc.wand_mode:0}] run return run function wc:wand/private/actions/set/prepare
execute if predicate wc:is_sneaking if items entity @s weapon.mainhand poisonous_potato[custom_data~{wc.wand_mode:1}] run return run function wc:wand/private/actions/stack/prepare
execute if predicate wc:is_sneaking if items entity @s weapon.mainhand poisonous_potato[custom_data~{wc.wand_mode:2}] run return run function wc:wand/private/actions/move/prepare

function wc:wand/private/left_click/raycast/init