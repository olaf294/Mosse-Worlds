execute if score @s wait matches -1 run return fail

scoreboard players add @s[scores={wait=0..}] wait 1

# bar progress
scoreboard players operation .temp wait = @s wait
scoreboard players operation .temp wait %= 200 numbers

# your own bar
execute store result storage legitermoose:temp bossbar.id int 1 run scoreboard players get @s id
scoreboard players operation .temp2 wait = @s wait
execute store result storage legitermoose:temp bossbar.waited int 1 run scoreboard players operation .temp2 wait /= 20 numbers
function legitermoose:bossbar/_update_text with storage legitermoose:temp bossbar

# if first bar done
execute if score @s wait >= @s server_wait run say world loading
execute if score @s wait >= @s server_wait run function legitermoose:bossbar/_started_world with storage legitermoose:temp bossbar

# if bar is far enough do some actions
execute if score @s wait matches 200 run function legitermoose:bossbar/_loading_world with storage legitermoose:temp bossbar
execute if score .temp2 wait > @s world_wait run say world loaded or something
execute if score .temp2 wait > @s world_wait run function legitermoose:bossbar/_clear_all_bossbars with storage legitermoose:temp bossbar
execute if score .temp2 wait > @s world_wait run scoreboard players set @s wait -1