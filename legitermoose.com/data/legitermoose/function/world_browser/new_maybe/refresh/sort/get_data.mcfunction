scoreboard players set player_count legitermoose.temp 0
execute store result score world_id legitermoose.temp run data get storage legitermoose:world_browser worlds[0].world_id
execute as @a if score @s worldid = world_id legitermoose.temp run scoreboard players add player_count legitermoose.temp 1
scoreboard players reset world_id legitermoose.temp