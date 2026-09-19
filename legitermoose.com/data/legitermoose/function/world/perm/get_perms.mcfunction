# Adventure mode if its not in the storage
$execute unless data storage legitermoose:gm worlds[{id:$(world_id)}].default run data modify storage legitermoose:gm worlds[{id:$(world_id)}].default set value 2
$execute store result score @s legitermoose.gamemode run data get storage legitermoose:gm worlds[{id:$(world_id)}].default

# if you have an exception then set gamemode
$execute if data storage legitermoose:gm worlds[{id:$(world_id)}].uuids[{id:$(UUID)}] store result score @s legitermoose.gamemode run data get storage legitermoose:gm worlds[{id:$(world_id)}].uuids[{id:$(UUID)}].gamemode


# Get Rank (defaults to 0)
$execute store result score @s legitermoose.rank run data get storage legitermoose:ranks worlds[{id:$(world_id)}].uuids[{id:$(UUID)}].rank

# Set gamemode
gamemode survival @s[tag=!is_admin,scores={legitermoose.gamemode=0}]
gamemode creative @s[tag=!is_admin,scores={legitermoose.gamemode=1}]
gamemode adventure @s[tag=!is_admin,scores={legitermoose.gamemode=2}]
gamemode spectator @s[tag=!is_admin,scores={legitermoose.gamemode=3}]