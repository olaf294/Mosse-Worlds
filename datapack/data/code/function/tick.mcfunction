execute as @a unless score @s id matches -2147483648..2147483647 run function code:_id

function code:realtime/set
execute as @a run function code:misc/triggers
function code:offline_time/leave_detect/tick

# /http timer
scoreboard players add .globaltimer misc 1
execute if score .globaltimer misc matches 1200 run function code:playerdetect/init
execute if score .globaltimer misc matches 1300.. run scoreboard players set .globaltimer misc 0

scoreboard players add .time_add time 1
execute if score .time_add time matches 20 run scoreboard players add .time time 1
execute if score .time_add time matches 20 run scoreboard players set .time_add time 0

# Optimize if not loaded
execute unless loaded 0 64 0 run return fail

# the room below the stairs
execute as @a[x=0,y=64,z=-45.0,dx=0,dy=1,dz=0,tag=is_admin] at @s run tp @s 0 64 -47
execute as @a[tag=!legitermoose.is_playing] run function code:browser/tick
execute if score .globaltimer misc matches 600 run function code:live_vote_count/init

# Mosse Joining
execute positioned 0 65 4 if block 0 65 4 polished_blackstone_button[powered=true] as @p run function legitermoose:lobby/join_server/pre_check with entity @s

# Random World, Good World, API Version, Jam World Buttons
execute if block 0 65 5 stone_button[powered=true] run function code:random_world/get
execute if block -2 65 5 polished_blackstone_button[powered=true] run function code:good_world/init

# Version Info Button
execute if block 2 65 5 stone_button[powered=true] run function code:api_version/get

# Jam World
execute if block -19 65 -7 polished_blackstone_button[powered=true] run function code:jam/init

# discord interaction
execute as f-0-3-0-1 on target run return run function code:misc/discord
execute as f-0-3-0-1 on attacker run return run function code:misc/discord