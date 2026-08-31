scoreboard players reset @s fly

tag @s remove legitermoose.is_playing
spawnpoint @s 0 64 0 0 8
clear @s *[custom_data~{world_browser:1b}]
team join z_spawn @s[team=player]

gamemode adventure @s[tag=!is_admin]
scoreboard players set @s worldid -1

data merge entity @s[tag=!is_admin] {abilities:{mayfly:0b,flying:0b}}