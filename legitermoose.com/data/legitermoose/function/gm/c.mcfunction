# return if not whitelisted
    #execute unless entity @s[tag=legitermoose.is_whitelisted] run return fail

tag @s remove legitermoose.lobby.gmc
tag @s remove legitermoose.lobby.gms
tag @s remove legitermoose.lobby.gma
tag @s remove legitermoose.lobby.gmsp
tag @s remove legitermoose.disable_global_time

tag @s add legitermoose.lobby.gmc

tp @s 1000 64 0 90 0
gamemode creative @s

tellraw @s {translate:"gameMode.changed",with:[{translate:"gameMode.creative"}]}

execute at @s run playsound minecraft:entity.wither.death master @s ~ ~ ~ 1 1

scoreboard players reset @s legitermoose.gmc_time

clear @s