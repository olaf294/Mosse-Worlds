scoreboard players enable @a ds.config
execute as @a[scores={ds.config=1..}] run function discordsync:user_config/show
scoreboard players reset @a[scores={ds.config=1..}] ds.config

execute as @a[scores={ds.rejoin=1..}] run function discordsync:util/joined

execute as @a unless score @s ds.id matches -2147483648..2147483647 run function discordsync:util/first_join

scoreboard players operation .players_prev ds.config = .players ds.config
execute store result score .players ds.config if entity @a
execute if score .players ds.config < .players_prev ds.config as @a run function discordsync:util/ld/as_all
execute if score .players ds.config < .players_prev ds.config run function discordsync:util/ld/left with storage discordsync:data playerlist[0]