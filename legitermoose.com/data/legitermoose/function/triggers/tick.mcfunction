# Voting
scoreboard players enable @s vote
scoreboard players reset @s[scores={worldid=-1..0}] vote
scoreboard players enable @s[tag=!legitermoose.has_voted_lobby,scores={worldid=0}] vote 
execute as @a[scores={vote=1..}] run function legitermoose:vote/vote
scoreboard players reset @s[scores={vote=1..}] vote

# Lobby
scoreboard players enable @s lobby
execute as @s[scores={lobby=1..}] run function legitermoose:triggers/lobby
scoreboard players reset @s[scores={lobby=1..}] lobby

# Fly
execute positioned 1000 64 0 run scoreboard players enable @s[distance=..300,tag=is_am] fly
execute positioned 1000 64 0 run scoreboard players reset @s[distance=301..] fly
execute positioned 1000 64 0 run scoreboard players reset @s[distance=..300,tag=!is_am] fly
scoreboard players enable @s[scores={legitermoose.rank=10}] fly
execute if score @s fly matches 1.. run function legitermoose:lobby/toggle_fly
scoreboard players reset @s[scores={fly=1..}] fly

# Setttings
scoreboard players enable @s[scores={legitermoose.rank=10}] worldsettings
execute unless score @s[tag=!is_admin] legitermoose.rank matches 10 run scoreboard players reset @s worldsettings
scoreboard players reset @s[tag=is_admin,scores={worldid=-1..0}] worldsettings
execute as @s[scores={worldsettings=1..}] store result storage legitermoose:temp settings.world_id int 1 run scoreboard players get @s worldid 
execute as @s[scores={worldsettings=1..}] run function legitermoose:world/feat/worldsettings/show_settings with storage legitermoose:temp settings
scoreboard players reset @s[scores={worldsettings=1..}] worldsettings

# Play
scoreboard players enable @s play
execute as @s[scores={play=1..}] run function legitermoose:world_browser/open
scoreboard players reset @s[scores={play=1..}] play 

# Find
execute if score .lobby_enabled legitermoose.misc matches 1 run scoreboard players enable @s find
execute unless score .lobby_enabled legitermoose.misc matches 1 run scoreboard players reset @s find
execute as @s[scores={find=1..}] store result storage legitermoose:temp find_player.id int 1 run scoreboard players get @s find
execute as @s[scores={find=1..}] run function legitermoose:triggers/find/find with storage legitermoose:temp find_player

# Code
scoreboard players enable @s[scores={legitermoose.rank=10}] code
scoreboard players enable @a[tag=is_dev] code
execute unless score @s[tag=!is_dev] legitermoose.rank matches 10 run scoreboard players reset @s code
execute as @s[scores={code=1..}] run function legitermoose:triggers/code/get

# Reload
scoreboard players enable @s[scores={legitermoose.rank=10}] reload
scoreboard players enable @s[tag=is_dev] reload
execute unless score @s[tag=!is_dev] legitermoose.rank matches 10 run scoreboard players reset @s reload
execute as @s[scores={reload=1..}] run function legitermoose:world/feat/reload/run
 
# Searching
scoreboard players enable @s world
execute as @s[scores={world=1..}] store result storage legitermoose:temp search.world_id int 1 run scoreboard players get @s world
execute as @s[scores={world=1..}] run function legitermoose:world/search/find/worldid with storage legitermoose:temp search

scoreboard players enable @s visit
execute as @s[scores={visit=1..}] run function legitermoose:world/search/find/playerid

# listall
scoreboard players enable @s listall
execute as @s[scores={listall=1..}] run function legitermoose:triggers/listall/show_ui
scoreboard players reset @s[scores={listall=1..}] listall

# gamemode
scoreboard players enable @s[scores={legitermoose.rank=10}] gamemode
execute as @s[scores={gamemode=0..3}] run function legitermoose:triggers/gamemode/trigger

# Disable when banned
scoreboard players reset @s[tag=legitermoose.global_banned] lobby
scoreboard players reset @s[tag=legitermoose.global_banned] play

# Disable if lobby disabled
execute unless score .lobby_enabled legitermoose.misc matches 1 run function legitermoose:triggers/reset/banned

# Disable at spawn
execute positioned 0 64 0 run scoreboard players reset @s[distance=..300] play
execute positioned 0 64 0 as @s[distance=..300] run function legitermoose:triggers/reset/lobby

# Disable at lobby
execute positioned 1000 64 0 as @s[tag=!is_admin,distance=..300] run function legitermoose:triggers/reset/lobby
