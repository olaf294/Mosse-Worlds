# Playerlist
function code:sidebar/list/update_tab_list

scoreboard players reset @s fly
scoreboard players reset @s world
scoreboard players reset @s visit

tag @s remove legitermoose.is_playing
spawnpoint @s 0 64 0 0 8
clear @s *[custom_data~{world_browser:1b}]
team join z_spawn @s[team=player]

scoreboard players set @s worldid -1

execute if entity @s[tag=is_admin] run return fail

gamemode adventure @s
data modify entity @s abilities.mayfly set value 0b 
data modify entity @s abilities.flying set value 0b