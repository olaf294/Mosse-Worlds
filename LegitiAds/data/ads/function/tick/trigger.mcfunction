# Config Tellraw
scoreboard players enable @a[tag=is_admin] ads.config

execute unless entity @a[tag=is_admin,scores={ads.config=1..}] run return fail

execute as @a[tag=is_admin,scores={ads.config=1000..1222}] run function ads:config/show
execute as @a[tag=is_admin,scores={ads.config=1..}] run function ads:config/show_settings