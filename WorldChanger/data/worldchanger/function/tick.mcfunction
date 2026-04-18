scoreboard players remove @a[scores={wc.cooldown=1..}] wc.cooldown 1

execute as @a[scores={wc.leave=1..}] run function worldchanger:wand/private/rejoin

scoreboard players enable @a[gamemode=creative] wc.wand
scoreboard players reset @a[gamemode=!creative] wc.wand

execute as @a[scores={wc.wand=1..}] run function worldchanger:give_wand
scoreboard players reset @a[scores={wc.wand=1..}] wc.wand