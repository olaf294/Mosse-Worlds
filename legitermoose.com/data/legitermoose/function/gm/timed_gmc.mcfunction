# Args:
#   $(time) - Amount of ticks (int) of GMC.
# return if not whitelisted
    #execute unless entity @s[tag=legitermoose.is_whitelisted] run return fail

tag @s remove legitermoose.lobby.gmc
tag @s remove legitermoose.lobby.gms
tag @s remove legitermoose.lobby.gma
tag @s remove legitermoose.lobby.gmsp

tag @s add legitermoose.lobby.gmc
tag @s add legitermoose.disable_global_time

tp @s 1000 64 0 90 0
gamemode creative @s

$scoreboard players set @s legitermoose.gmc_time $(time)

tellraw @s {translate:"gameMode.changed",with:[{translate:"gameMode.creative"}]}

execute at @s run playsound minecraft:entity.wither.death master @s ~ ~ ~ 1 1