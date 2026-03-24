# Welcome to Legitermoose.com Datapack. This is a terrible recreation of Legitimoose on Legitimoose.

# Spawn Stuff
execute positioned 1000 64 0 as @a[distance=..250] run tag @s add legitermoose.is_playing
execute positioned 0 64 0 as @a[distance=..250] run tag @s remove legitermoose.is_playing
execute positioned 0 64 0 run gamemode adventure @a[distance=..250,tag=!is_admin]
execute positioned 0 64 0 run scoreboard players set @a[distance=..250] worldid -1
execute positioned 0 64 0 as @a[distance=..250] run spawnpoint @s 0 64 0 0 0
execute positioned 1000 64 0 as @a[distance=..250] run spawnpoint @s 1000 64 0 90 0


# Visibility across "worlds"
visibility @a[tag=legitermoose.is_playing] show @a[tag=legitermoose.is_playing]
visibility @a[tag=!legitermoose.is_playing] show @a[tag=!legitermoose.is_playing]
visibility @a[tag=legitermoose.is_playing] hide @a[tag=!legitermoose.is_playing]
visibility @a[tag=!legitermoose.is_playing] hide @a[tag=legitermoose.is_playing]


# Spawn Mannequinss
execute as @e[type=mannequin,tag=legitermoose.spawn] at @s if entity @a[distance=..25,gamemode=!spectator] run rotate @s facing entity @p[gamemode=!spectator]
execute as @e[type=mannequin,tag=legitermoose.spawn] at @s unless entity @a[distance=..25,gamemode=!spectator] run rotate @s -90 0

execute as @e[type=interaction,tag=legitermoose.spawn.interact_play] on target run inventory @s block 992 54 1 Search Worlds 
execute as @e[type=interaction,tag=legitermoose.spawn.interact_play] on attacker run inventory @s block 992 54 1 Search Worlds
execute as @e[type=interaction,tag=legitermoose.spawn.interact_create] on target run function legitermoose:world/create with entity @s
execute as @e[type=interaction,tag=legitermoose.spawn.interact_create] on attacker run function legitermoose:world/create with entity @s

execute as @e[type=interaction,tag=legitermoose.spawn] run data remove entity @s interaction
execute as @e[type=interaction,tag=legitermoose.spawn] run data remove entity @s attack


# Timed GMC
tag @a[scores={legitermoose.gmc_time=0..},gamemode=adventure] remove legitermoose.disable_global_time
execute as @a[scores={legitermoose.gmc_time=1..},gamemode=creative] run function legitermoose:lobby/_timed_gmc_tick


# Forbidden Items
    #clear @a[tag=!is_admin] potion
clear @a[tag=!is_admin] splash_potion
clear @a[tag=!is_admin] lingering_potion
clear @a[tag=!is_admin] tipped_arrow
clear @a[tag=!is_admin] ender_dragon_spawn_egg
clear @a[tag=!is_admin] wither_spawn_egg
clear @a[tag=!is_admin] tnt_minecart
clear @a[tag=!is_admin] end_crystal
clear @a[tag=!is_admin] goat_horn
clear @a[tag=!is_admin] ender_chest

kill @e[type=splash_potion]
kill @e[type=lingering_potion]
kill @e[type=tnt]
kill @e[type=tnt_minecart]
kill @e[type=end_crystal]
kill @e[type=fireball]
kill @e[type=area_effect_cloud]

kill @e[type=item,nbt={Item:{id:"minecraft:potion"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:splash_potion"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:lingering_potion"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:ender_dragon_spawn_egg"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:wither_spawn_egg"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:tnt_minecart"}}]

kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{ui:1b}}}}]


# Player Count
execute store result score .players legitermoose.misc if entity @a[tag=legitermoose.is_playing]

# Playerlist
playerlist @a[tag=!legitermoose.is_playing] footer set <gold> <b> </b> Yᴏᴜ ᴀʀᴇ ᴘʟᴀʏɪɴɢ ᴏɴ: <gradient:gold:yellow><shadow:#ff00007f>M<shadow:#ff0f007f>o<shadow:#ff1f007f>s<shadow:#ff2e007f>s<shadow:#ff3e007f>e <shadow:#ff5d007f>W<shadow:#ff6c007f>o<shadow:#ff7c007f>r<shadow:#ff8b007f>l<shadow:#ff9b007f>d<yellow><shadow:gold:.5>s <b></b> <b> </b>
playerlist @a[tag=legitermoose.is_playing] footer set <gold> <b> </b> Yᴏᴜ ᴀʀᴇ ᴘʟᴀʏɪɴɢ ᴏɴ: <blue><u>legitermoose.com</u> <b></b> <b> </b>


# Teleporting
execute as @a[tag=legitermoose.teleported,scores={legitermoose.tp_cd=..21}] run function legitermoose:world/load_world/tp_to_plot with storage legitermoose:temp plot_position

tag @a[scores={legitermoose.tp_cd=61..}] remove legitermoose.teleported
scoreboard players reset @a[scores={legitermoose.tp_cd=61..}] legitermoose.tp_cd


# Searching
execute as @a[scores={worldsearch=1..}] store result storage legitermoose:temp search.world_id int 1 run scoreboard players get @s worldsearch
execute as @a[scores={worldsearch=1..}] run function legitermoose:world/search/find/worldid with storage legitermoose:temp search

execute as @a[scores={playersearch=1..}] store result storage legitermoose:temp search.player_id int 1 run scoreboard players get @s playersearch
execute as @a[scores={playersearch=1..}] run function legitermoose:world/search/find/playerid with storage legitermoose:temp search


# leave detection
execute as @a[scores={leave=1..}] run function legitermoose:util/leave

execute as @a run function legitermoose:util/no_gma_blocks

# World ID
execute positioned 0 64 0 as @a[distance=251..] run function legitermoose:util/get_worldid

# Ranks
execute as @a run function legitermoose:util/gm/world_gm


execute as @a at @s run function legitermoose:player/tick
execute as @e[type=item] if items entity @s container.0 *[custom_data~{custom_ui:1b}] run kill @s

execute as @a[scores={worldid=-8}] run function legitermoose:world_browser/ensure_compass
execute as @e[type=item] if items entity @s container.0 *[custom_data~{world_browser:1b}] run kill @s