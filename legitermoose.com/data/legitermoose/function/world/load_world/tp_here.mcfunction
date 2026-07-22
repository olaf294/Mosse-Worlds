tp @s ~ ~ ~ 0 0
spawnpoint @s ~ ~ ~
setblock ~ ~-3 ~ test_block[mode=start]

# Get world rank and gamemode
data modify storage legitermoose:temp plot_position.uuid set from entity @s UUID
function legitermoose:world/perm/get_perms with storage legitermoose:temp plot_position

# Remove flying (or add it idk)
execute unless score @s legitermoose.rank matches 10 run data merge entity @s[tag=!is_admin] {abilities:{mayfly:0b,flying:0b}}
execute if score @s legitermoose.rank matches 10 run data merge entity @s[tag=!is_admin] {abilities:{mayfly:1b,flying:0b}}

# if loaded, do the fun stuff
execute if loaded ~ ~ ~ run inventory @s close
execute if loaded ~ ~ ~ run tellraw @s {text:"World loaded!",color:green}