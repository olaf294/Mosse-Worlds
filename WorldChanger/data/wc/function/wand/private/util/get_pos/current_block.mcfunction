# Puts coordinates of execution into scores ".x", ".y" and ".z" under "wc.temp"
summon marker ~ ~ ~ {Tags:["wc.temp"]}
execute store result score .x wc.temp run data get entity @n[type=marker,tag=wc.temp] Pos[0]
execute store result score .y wc.temp run data get entity @n[type=marker,tag=wc.temp] Pos[1]
execute store result score .z wc.temp run data get entity @n[type=marker,tag=wc.temp] Pos[2]
kill @e[type=marker,tag=wc.temp]