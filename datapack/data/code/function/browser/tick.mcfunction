execute if items entity @s player.cursor *[custom_data~{navigator.world:1b}] run return run function code:browser/action/open_world

execute if items entity @s container.* *[custom_data~{navigator.world:1b}] run return run function code:browser/action/slow_down
execute if items entity @s weapon.offhand *[custom_data~{navigator.world:1b}] run return run function code:browser/action/slow_down

clear @a *[custom_data~{navigator.world:1b}]