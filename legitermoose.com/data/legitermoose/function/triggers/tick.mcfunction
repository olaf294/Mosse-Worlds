
# Voting
scoreboard players enable @s[tag=legitermoose.is_playing,tag=!legitermoose.has_voted_lobby] vote
scoreboard players enable @s[tag=legitermoose.has_voted_lobby,scores={worldid=1..}] vote
scoreboard players reset @s[tag=legitermoose.has_voted_lobby,scores={worldid=-8}] vote
execute positioned 0 64 0 run scoreboard players reset @s[distance=..250] vote
execute as @a[scores={vote=1..}] run function legitermoose:vote/vote
scoreboard players reset @s[scores={vote=1..}] vote


# Lobby
scoreboard players enable @s lobby
execute if score @s lobby matches 1.. run function legitermoose:triggers/lobby
scoreboard players reset @s[scores={lobby=1..}] lobby

# Fly
execute positioned 1000 64 0 run scoreboard players enable @s[distance=..250,tag=is_am] fly
execute if score @s fly matches 1.. run function legitermoose:lobby/toggle_fly
execute positioned 1000 64 0 run scoreboard players reset @s[distance=251..] fly
execute positioned 1000 64 0 run scoreboard players reset @s[distance=..250,tag=!is_am] fly
scoreboard players enable @s[scores={legitermoose.rank=10}] fly

# Setttings
scoreboard players enable @s[scores={legitermoose.rank=10}] settings
execute unless score @s legitermoose.rank matches 10 run scoreboard players reset @s settings
execute as @s[scores={settings=1..}] run function legitermoose:world/feat/worldsettings

# Play
scoreboard players enable @s play
execute positioned 0 64 0 run scoreboard players reset @s[distance=..250] play
execute as @s at @s if score @s play matches 1.. run function legitermoose:world_browser/open
scoreboard players reset @s[scores={play=1..}] play 

# Find
scoreboard players enable @s find
execute as @s if score @s find matches 1.. store result storage legitermoose:temp find_player.id int 1 run scoreboard players get @s find
    #data modify storage legitermoose:temp find_player.id set string storage legitermoose:temp find_player.id_int
execute as @s[scores={find=1..}] run function legitermoose:triggers/find/find with storage legitermoose:temp find_player

# Code
scoreboard players enable @s[scores={legitermoose.rank=10}, tag=is_dev] code
scoreboard players enable @a[tag=is_dev] code
execute unless score @s[tag=!is_dev] legitermoose.rank matches 10 run scoreboard players reset @s code
execute as @s[scores={code=1..}] run function legitermoose:world/feat/code/run

# Reload
scoreboard players enable @s[scores={legitermoose.rank=10}, tag=is_dev] reload
scoreboard players enable @a[tag=is_dev] reload
execute unless score @s[tag=!is_dev] legitermoose.rank matches 10 run scoreboard players reset @s reload
execute as @s[scores={reload=1..}, tag=is_dev] run function legitermoose:world/feat/reload/run


scoreboard players reset @s[tag=legitermoose.global_banned] lobby
scoreboard players reset @s[tag=legitermoose.global_banned] play