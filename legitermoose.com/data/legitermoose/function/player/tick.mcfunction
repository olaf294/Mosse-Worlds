# Triggers
function legitermoose:triggers/tick
execute positioned 1000 64 0 as @s[distance=..300] run function legitermoose:items/no_gma_blocks

# Forbidden Items
execute as @s[tag=!is_admin] run function legitermoose:items/remove_banned_components

# world slots 
execute unless score @s legitermoose.world_slots matches -2147483648..2147483647 run scoreboard players set @s legitermoose.world_slots 1

# rejoin detection
execute if score @s leave matches 1.. run function legitermoose:player/rejoin

# Leave Server
execute as @s[predicate=code:low_y,tag=legitermoose.is_playing] run function legitermoose:lobby/join/rank_leave
tp @s[predicate=code:low_y] 0 64 0 0 8

# World gamemode / permission
function legitermoose:util/perm/world_gm
function legitermoose:world/load_world/tick

# Playerlist
function code:sidebar/list/update_list

# UI stuff
execute if items entity @s player.cursor *[custom_data~{custom_ui:true}] run function legitermoose:ui/handle_click
execute store result score $amount ui run clear @s *[custom_data~{custom_ui:true}]
execute unless score $amount ui matches 0 run function legitermoose:ui/render_ui
execute unless score @s ui matches 0 if predicate legitermoose:out_of_ui if score @s time_since_open matches 10.. run function legitermoose:ui/close

scoreboard players add @s time_since_open 1

# Stop sounds
stopsound @s * block.end_portal.spawn

# Edit world name / icon
execute if items entity @s player.cursor paper[custom_data~{rename_world:1b},custom_name] run function legitermoose:world/feat/worldsettings/world_name/prep_setting_name
execute if items entity @s [{type:"slot_range",slots:"container.*"},{type:"slot_range",slots:"weapon.offhand"}] paper[custom_data~{rename_world:1b}] run clear @s paper[custom_data~{rename_world:1b}]

execute if items entity @s player.cursor paper[custom_data~{reicon_world:1b},custom_name] run function legitermoose:world/feat/worldsettings/world_icon/prep_setting_icon
execute if items entity @s [{type:"slot_range",slots:"container.*"},{type:"slot_range",slots:"weapon.offhand"}] paper[custom_data~{reicon_world:1b}] run clear @s paper[custom_data~{reicon_world:1b}]

# Spawn Tick
execute positioned 1000 64 0 as @s[distance=..300] run function legitermoose:lobby/lobby_tick
execute positioned 0 64 0 as @s[distance=300..] run function legitermoose:mosse/not_spawn