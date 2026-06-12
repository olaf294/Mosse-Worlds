# Total Player Count
scoreboard players operation .players_prev misc = .players misc
execute store result score .players misc if entity @a

team join player @a[team=]
effect give @a saturation 100 1 true

execute as @a unless score @s id matches -2147483648..2147483647 run function code:_id

function code:realtime/set
execute as @a run function code:streak/tick
function code:offline_time/leave_detect/tick

scoreboard players enable @a offset
execute as @a[scores={offset=-2147483648..2147483647}] unless score @s offset = @s hour2 run function code:realtime/update_offset

# /http timer
scoreboard players add .globaltimer misc 1
execute if score .globaltimer misc matches 1200 run function code:playerdetect/init
execute if score .globaltimer misc matches 1300.. run scoreboard players set .globaltimer misc 0

# Optimize if not loaded
execute unless loaded 0 64 0 run return fail

# the room below the stairs
execute as @a[x=0,y=64,z=-45.0,dx=0,dy=1,dz=0,tag=is_admin] at @s run tp @s 0 64 -47


execute if score .globaltimer misc matches 600 run function code:live_vote_count/init

# Mosse Joining
execute if block 0 65 4 polished_blackstone_button[powered=true] positioned 0 65 4 as @p run function legitermoose:lobby/join_server/pre_check with entity @s


# Random World Button
execute if block 0 65 5 stone_button[powered=true] run http callback code:random_world/init store api random send "https://api.legiti.dev/world/random" GET

# Good World Button
execute if block -2 65 5 polished_blackstone_button[powered=true] run function code:good_world/init

# Version Info Button
execute if block 2 65 5 stone_button[powered=true] run http callback code:api_version/init store api version send "https://api.legiti.dev/" GET

# Jam World
execute if block -19 65 -7 polished_blackstone_button[powered=true] run function code:jam/init

execute as @a[tag=!legitermoose.is_playing] run function code:browser/tick

# Timeout
scoreboard players add @a timeout 0
scoreboard players remove @a[scores={timeout=1..}] timeout 1
visibility @a[scores={timeout=1..},tag=!is_admin] show @e[tag=show_for_timed_out_users]
visibility @a[scores={timeout=..0},tag=!is_admin] hide @e[tag=show_for_timed_out_users]
visibility @a[tag=is_admin] hide @e[tag=show_for_timed_out_users]
execute as @e[type=interaction,tag=chest_protection_interaction] on target at @s run function code:browser/timed_out

# discord interaction
execute as @e[type=interaction,tag=discord_join] on target run tellraw @s {text:"Cʟɪᴄᴋ ʜᴇʀᴇ ᴛᴏ ᴊᴏɪɴ ᴛʜᴇ ᴅɪꜱᴄᴏʀᴅ!",color:"#0099ff",underlined:1b,click_event:{action:"open_url",url:"https://discord.gg/KTAusBx2GH"}}
execute as @e[type=interaction,tag=discord_join] run data remove entity @s interaction