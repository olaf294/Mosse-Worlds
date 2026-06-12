# Stage 1/4: Waiting for world
function legitermoose:bossbar/_clear_all_bossbars with storage legitermoose:temp bossbar

$bossbar add mosse:waiting_for_world$(id) {text:"Wᴀɪᴛɪɴɢ ꜰᴏʀ ꜱᴇʀᴠᴇʀ...",color:white}
$bossbar set mosse:waiting_for_world$(id) color blue
$bossbar set mosse:waiting_for_world$(id) style notched_20
$bossbar set mosse:waiting_for_world$(id) max 200

scoreboard players set @s wait 0
$bossbar set mosse:waiting_for_world$(id) value 0
$bossbar set mosse:waiting_for_world$(id) players @s