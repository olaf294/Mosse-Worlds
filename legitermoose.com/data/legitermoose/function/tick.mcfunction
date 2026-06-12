# Welcome to Legitermoose.com Datapack. This is a terrible recreation of Legitimoose on Legitimoose.
# Total Player Count
scoreboard players operation .players_prev misc = .players misc
execute store result score .players misc if entity @a

# Player Count (only Lobby)
execute store result score .players legitermoose.misc if entity @a[tag=legitermoose.is_playing]

# Spawn Stuff
execute positioned 1000 64 0 as @a[distance=..300] run function legitermoose:lobby/lobby_tick
execute positioned 0 64 0 as @a[distance=300..] run function legitermoose:mosse/not_spawn
execute positioned 0 64 0 as @a[distance=..300] run function legitermoose:mosse/spawn


# Leave Server
execute as @a[predicate=code:is_y_below_40,tag=legitermoose.is_playing] run function legitermoose:lobby/join/rank_leave
tp @a[predicate=code:is_y_below_40] 0 64 0 0 8

function legitermoose:code/tick/_

# Visibility across "worlds"
visibility @a show @a

# Playerlist
playerlist @a[tag=!legitermoose.is_playing] footer set <gold>  Yᴏᴜ ᴀʀᴇ ᴘʟᴀʏɪɴɢ ᴏɴ: <gradient:gold:yellow><shadow:#ff00007f>M<shadow:#ff0f007f>o<shadow:#ff1f007f>s<shadow:#ff2e007f>s<shadow:#ff3e007f>e <shadow:#ff5d007f>W<shadow:#ff6c007f>o<shadow:#ff7c007f>r<shadow:#ff8b007f>l<shadow:#ff9b007f>d<yellow><shadow:gold:.5>s <b> </b>
playerlist @a[tag=legitermoose.is_playing] footer set <gold>  Yᴏᴜ ᴀʀᴇ ᴘʟᴀʏɪɴɢ ᴏɴ: <#3366ff><u>ʟᴇɢɪᴛᴇʀᴍᴏᴏꜱᴇ.ᴄᴏᴍ</u> <b> </b>

# Lobby Mannequinss
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
execute positioned 1000 64 0 as @a[scores={legitermoose.gmc_time=1..},gamemode=creative,distance=..300] run function legitermoose:lobby/_timed_gmc_tick

# Forbidden Items
clear @a[tag=!is_admin] #legitermoose:forbidden_items
clear @a[tag=!is_admin,scores={worldid=0}] #legitermoose:lobby_forbidden_items
    
kill @e[type=#legitermoose:forbidden_entities]
execute as @e[type=item] if items entity @s contents *[custom_data~{custom_ui:1b}] run kill @s
execute as @e[type=item] if items entity @s contents *[custom_data~{world_browser:1b}] run kill @s
# need to get this to work...
# execute as @e[type=item] if items entity @s contents #legitermoose:forbidden_items run kill @s
# execute positioned 1000 64 0 as @e[type=item,distance=..300] if items entity @s contents #legitermoose:lobby_forbidden_items run kill @s

kill @e[type=item,nbt={Item:{id:"minecraft:potion"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:splash_potion"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:lingering_potion"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:ender_dragon_spawn_egg"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:wither_spawn_egg"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:tnt_minecart"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:ender_chest"}}]
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{ui:1b}}}}]

# Teleporting
execute as @a[tag=legitermoose.teleported,scores={legitermoose.tp_cd=..20}] run function legitermoose:world/load_world/tp_to_plot with storage legitermoose:temp plot_position

tag @a[scores={legitermoose.tp_cd=61..}] remove legitermoose.teleported
scoreboard players reset @a[scores={legitermoose.tp_cd=61..}] legitermoose.tp_cd

# rejoin detection
execute as @a[scores={leave=1..}] run function legitermoose:util/leave

# Player Tick
execute as @a at @s run function legitermoose:player/tick

execute as @a[scores={worldid=0}] run function legitermoose:world_browser/ensure_compass

execute as @e[type=ender_pearl] run function legitermoose:util/ender_pearls

execute if block 0 65 4 polished_blackstone_button[powered=true] positioned 0 65 4 as @p run function legitermoose:lobby/join_server/pre_check with entity @s
execute if block 0 65 4 polished_blackstone_button[powered=true] run setblock 0 65 4 polished_blackstone_button[powered=false,face=floor,facing=south]