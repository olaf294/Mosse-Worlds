advancement revoke @s only worldchanger:right_click
execute if score @s wc.cooldown matches 1.. run return fail
scoreboard players set @s wc.cooldown 4
execute if predicate worldchanger:is_sneaking run return run function worldchanger:wand/private/actions/stack/prepare
function worldchanger:wand/private/right_click/raycast/init