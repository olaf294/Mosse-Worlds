team join player @a[team=]
effect give @a saturation 100 1 true

execute as @a unless score @s id matches -2147483648..2147483647 run function code:_id

execute as @a run function code:realtime/set
execute as @a[tag=!legitermoose.is_playing] run function code:browser/tick

scoreboard players enable @a offset
execute as @a[scores={offset=-2147483648..2147483647}] unless score @s offset = @s hour2 run function code:realtime/update_offset

# /http timer
scoreboard players add .globaltimer misc 1
execute if score .globaltimer misc matches 1200 run function code:playerdetect/init

# Optimize if not loaded
execute unless loaded 0 64 0 run return fail


execute if score .globaltimer misc matches 600 run function code:live_vote_count/init

# Random World Button
execute positioned 0 65 5 if block ~ ~ ~ stone_button[powered=true] run http callback code:random_world/init store api random send "https://api.legiti.dev/world/random" GET

# Good World Button
execute positioned -2 65 5 if block ~ ~ ~ polished_blackstone_button[powered=true] run function code:good_world/init

# Version Info Button
execute positioned 2 65 5 if block ~ ~ ~ stone_button[powered=true] run http callback code:api_version/init store api version send "https://api.legiti.dev/" GET

# Toggle Info 
scoreboard players enable @a toggle_info
execute as @a[scores={toggle_info=1..}] at @s run function code:toggle_info/toggle
scoreboard players reset @a[scores={toggle_info=1..}] toggle_info
scoreboard players reset @a[tag=legitermoose.is_playing] toggle_info

# Timeout
scoreboard players add @a timeout 0
scoreboard players remove @a[scores={timeout=1..}] timeout 1
visibility @a[scores={timeout=1..},tag=!is_admin] show @e[tag=show_for_timed_out_users]
visibility @a[scores={timeout=..0},tag=!is_admin] hide @e[tag=show_for_timed_out_users]
visibility @a[tag=is_admin] hide @e[tag=show_for_timed_out_users]
execute as @e[type=interaction,tag=chest_protection_interaction] on target at @s run function code:browser/timed_out

# discord interaction
execute as @e[type=interaction,tag=discord_join] on target run tellraw @s {text:"Click here to join the discord!",color:blue,underlined:1b,click_event:{action:"open_url",url:"https://discord.gg/KTAusBx2GH"}}
execute as @e[type=interaction,tag=discord_join] run data remove entity @s interaction

function code:browser/tick