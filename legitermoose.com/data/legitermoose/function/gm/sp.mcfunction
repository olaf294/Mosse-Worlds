# return if not whitelisted
    #execute unless entity @s[tag=legitermoose.is_whitelisted] run return fail

tag @s remove legitermoose.lobby.gmc
tag @s remove legitermoose.lobby.gms
tag @s remove legitermoose.lobby.gma
tag @s remove legitermoose.lobby.gmsp
tag @s remove legitermoose.disable_global_time

tag @s add legitermoose.lobby.gmsp

tp @s 1000 64 0 90 0
gamemode spectator @s

tellraw @s {translate:"gameMode.changed",with:[{translate:"gameMode.spectator"}]}

execute at @s run playsound minecraft:entity.wither.death master @s ~ ~ ~ 1 1

clear @s