# Adventure mode if its not in the storage
$execute unless data storage legitermoose:gm worlds[{id:$(world_id)}].default run data modify storage legitermoose:gm worlds[{id:$(world_id)}].default set value 2
$execute store result score @s legitermoose.gamemode run data get storage legitermoose:gm worlds[{id:$(world_id)}].default

# If you are the world owner
# $execute if data storage legitermoose:gm worlds[{id:$(world_id)}].uuids[{id:$(UUID)}].gamemode store result score @s legitermoose.gamemode run data get storage legitermoose:gm worlds[{id:$(world_id)}].uuids[{id:$(UUID)}].gamemode  

# if you have an exception then set gamemode
$execute store result score @s legitermoose.gamemode run data get storage legitermoose:gm worlds[{id:$(world_id)}].uuids[{id:$(UUID)}].gamemode
 

# Get Rank
$execute store result score @s legitermoose.rank run data get storage legitermoose:ranks worlds[{id:$(world_id)}].uuids[{id:$(UUID)}].rank

# If you are in lobby with Lobby GMC
execute positioned 1000 64 0 if entity @s[tag=legitermoose.is_playing,tag=legitermoose.lobby.gmc,tag=!is_admin,distance=..300] run scoreboard players set @s legitermoose.gamemode 1


# Set gamemode
gamemode survival @s[tag=!is_admin,scores={legitermoose.gamemode=0}]
gamemode creative @s[tag=!is_admin,scores={legitermoose.gamemode=1}]
gamemode adventure @s[tag=!is_admin,scores={legitermoose.gamemode=2}]
gamemode spectator @s[tag=!is_admin,scores={legitermoose.gamemode=3}]