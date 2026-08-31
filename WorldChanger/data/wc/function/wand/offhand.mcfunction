item replace entity @s weapon.mainhand from entity @s weapon.offhand
item replace entity @s weapon.offhand with air
advancement revoke @s only wc:offhand
execute at @s run playsound block.note_block.pling ui @s ~ ~ ~ 1 1

execute if items entity @s weapon.mainhand *[custom_data~{wc.wand_mode:0}] run return run function wc:wand/private/change_wand_mode/stack
execute if items entity @s weapon.mainhand *[custom_data~{wc.wand_mode:1}] run return run function wc:wand/private/change_wand_mode/move
execute if items entity @s weapon.mainhand *[custom_data~{wc.wand_mode:2}] run return run function wc:wand/private/change_wand_mode/edit