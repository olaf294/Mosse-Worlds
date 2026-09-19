# Store Your UUID in Storage
data modify storage legitermoose:temp ranks.UUID set from entity @s UUID

# Store World ID in Storage
execute store result storage legitermoose:temp ranks.world_id int 1 run scoreboard players get @s worldid

# All players not on Legitermoose don't have any rank score
scoreboard players reset @s[tag=!legitermoose.is_playing] legitermoose.rank

# All players (except admins) without a rank score get adventure mode
execute as @s[tag=!is_admin] unless score @s legitermoose.rank matches -2147483648..2147483647 run gamemode adventure @s

# Clear those players too
execute as @s[tag=!is_admin] unless score @s legitermoose.rank matches -2147483648..2147483647 run clear @s *[!custom_data~{ui:1b}, !custom_data~{world_browser:1b}, !custom_data~{noclear:1b}]

# All Admins get Rank 10
scoreboard players set @a[tag=is_admin] legitermoose.rank 10

# Get Rank into Score
execute as @s[tag=legitermoose.is_playing] run function legitermoose:world/perm/get_perms with storage legitermoose:temp ranks