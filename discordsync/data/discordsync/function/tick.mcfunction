scoreboard players enable @a ds.config
execute as @a[scores={ds.config=1..}] run function discordsync:user_config/show
scoreboard players reset @a[scores={ds.config=1..}] ds.config