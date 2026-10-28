## Config
# default config\
    1 = modern, 2 = vanilla, 3 = lobby, 4 = chatsync
execute as @a unless score @s ds.style matches -2147483648..2147483647 run scoreboard players set @s ds.style 1

# Config trigger
scoreboard players enable @a ds.config
execute as @a[scores={ds.config=1..}] run function discordsync:user_config/show
scoreboard players reset @a[scores={ds.config=1..}] ds.config


## Join / Leave Detections
# First join
execute as @a unless score @s ds.id matches -2147483648..2147483647 run function discordsync:util/first_join

# All joins
execute as @a[scores={ds.rejoin=1..}] run function discordsync:util/joined

# Leave detect core
scoreboard players operation .players_prev ds.config = .players ds.config
execute store result score .players ds.config if entity @a
execute if score .players ds.config < .players_prev ds.config as @a run function discordsync:util/ld/as_all
execute if score .players ds.config < .players_prev ds.config run function discordsync:util/ld/left with storage discordsync:data playerlist[0]