tp @s ~ ~ ~ 0 0

# LEGACY - Move Test Block at spawn down by 1 block
execute if block ~ ~-2 ~ test_block run tellraw @a[distance=..100] {text:"Tʜɪꜱ Wᴏʀʟᴅ ʜᴀꜱ ᴀ ʟᴇɢᴀᴄʏ Sᴘᴀᴡɴᴘᴏɪɴᴛ ᴀᴛ Y=62 ᴀɴᴅ ʜᴀꜱ ʙᴇᴇɴ ᴍᴏᴠᴇᴅ ᴅᴏᴡɴ.",color:yellow}
execute if block ~ ~-2 ~ test_block run setblock ~ ~-2 ~ waxed_exposed_copper

setblock ~ ~-3 ~ test_block[mode=start]

# Increase amount of attempt ticks by 1, until 3 seconds
scoreboard players add @s legitermoose.tp_cd 1

# Get world rank and gamemode
data modify storage legitermoose:temp plot_position.uuid set from entity @s UUID
function legitermoose:world/perm/get_perms with storage legitermoose:temp plot_position

# Remove flying (or add it idk)
execute unless score @s legitermoose.rank matches 10 run data merge entity @s[tag=!is_admin] {abilities:{mayfly:0b,flying:0b}}
execute if score @s legitermoose.rank matches 10 run data merge entity @s[tag=!is_admin] {abilities:{mayfly:1b,flying:0b}}

# if loaded, do the fun stuff
execute if loaded ~ ~ ~ run inventory @s close
execute if loaded ~ ~ ~ run tellraw @s {text:"World loaded!",color:green}
execute if loaded ~ ~ ~ run return run scoreboard players set @s legitermoose.tp_cd 100