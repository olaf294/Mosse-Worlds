# Store Your UUID in Storage
data modify storage legitermoose:temp ranks.UUID set from entity @s UUID

# Store World ID in Storage
execute store result storage legitermoose:temp ranks.world_id int 1 run scoreboard players get @s worldid

# Get Rank into Score
execute as @s[tag=legitermoose.is_playing] run function legitermoose:world/perm/get_perms with storage legitermoose:temp ranks

# All players not on Legitermoose don't have any rank score
scoreboard players reset @s[tag=!legitermoose.is_playing] legitermoose.rank

# All players with Lobby GMC at LOBBY get Rank 5
execute positioned 1000 64 0 run scoreboard players set @s[tag=!is_admin,tag=legitermoose.lobby.gmc,distance=..250] legitermoose.rank 5

# All players (except admins) without a rank score get adventure mode
execute as @s[tag=!is_admin] unless score @s legitermoose.rank matches -2147483648..2147483647 run gamemode adventure @s

# Clear those players too
execute as @s[tag=!is_admin] unless score @s legitermoose.rank matches -2147483648..2147483647 run clear @s *[!custom_data~{ui:1b}, !custom_data~{world_browser:1b}]

# All Lobby GMC players get Creative if they are at lobby
gamemode creative @s[tag=!is_admin,scores={legitermoose.rank=5}]

# All Admins in Lobby get Rank 10
execute positioned 1000 64 0 run scoreboard players set @s[tag=is_admin,distance=..250] legitermoose.rank 10

# Set all Rank 10s to Creative
gamemode creative @s[tag=!is_admin,scores={legitermoose.rank=10}]

# Set all Rank 0s to Adventure
gamemode adventure @s[tag=!is_admin,scores={legitermoose.rank=0}]