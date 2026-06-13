scoreboard players reset @s toggle_info
execute as @s[tag=!info] run return run function code:toggle_info/on
execute as @s[tag=info] run return run function code:toggle_info/off