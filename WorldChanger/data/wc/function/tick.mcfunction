scoreboard players remove @a[scores={wc.cooldown=1..}] wc.cooldown 1

execute as @a[scores={wc.leave=1..}] run function wc:wand/private/rejoin
execute as @a[scores={wc.throw=1..}] run function wc:wand/check_thrown

execute as @a[gamemode=creative] run function wc:wand/particle/show

scoreboard players enable @a[gamemode=creative] wc.wand
execute as @a[scores={wc.wand=1..}] run function wc:give_wand
tellraw @a[scores={wc.wand=1..}] [{text:"W",color:gold},{text:"C",color:yellow},{text:" » ",color:gray},{text:"Sᴇᴇ ɪᴛᴇᴍ ᴛᴏᴏʟᴛɪᴘ ꜰᴏʀ ɪɴꜰᴏ ",color:blue}]
scoreboard players reset @a[scores={wc.wand=1..}] wc.wand

scoreboard players enable @a[gamemode=creative] wc.1
execute as @a[scores={wc.1=1..}] at @s run function wc:wand/private/get_pos/1
scoreboard players reset @a[scores={wc.1=1..}] wc.1

scoreboard players enable @a[gamemode=creative] wc.2
execute as @a[scores={wc.2=1..}] at @s run function wc:wand/private/get_pos/2
scoreboard players reset @a[scores={wc.2=1..}] wc.2

scoreboard players reset @a[gamemode=!creative] wc.wand
scoreboard players reset @a[gamemode=!creative] wc.1
scoreboard players reset @a[gamemode=!creative] wc.2