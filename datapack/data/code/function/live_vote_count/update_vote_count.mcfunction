scoreboard players add .total requests 1
scoreboard players add .live_vote_count requests 1

execute store result score .mosse_votes_new misc run data get storage api vote_count.response.votes
execute store result score .mosse_visits_new misc run data get storage api vote_count.response.visits

execute unless score .mosse_votes_new misc = .mosse_votes misc run tellraw @a[tag=is_admin,tag=!ignore] {text:"ⓘ Vᴏᴛᴇ ᴄᴏᴜɴᴛ ᴄʜᴀɴɢᴇᴅ!",color:"#0099ff"}
execute unless score .mosse_visits_new misc = .mosse_visits misc run tellraw @a[tag=is_admin,tag=!ignore] {text:"ⓘ Vɪꜱɪᴛ ᴄᴏᴜɴᴛ ᴄʜᴀɴɢᴇᴅ!",color:"#0099ff"}

scoreboard players operation .mosse_votes misc = .mosse_votes_new misc
scoreboard players operation .mosse_visits misc = .mosse_visits_new misc

execute if data storage api {vote_count:{status_code:200}} run tellraw @a[tag=is_admin,tag=!ignore] [{text:"(API) Rᴇꜱᴘᴏɴꜱᴇ: ",color:gray},{storage:api,nbt:"vote_count.status_code",color:dark_green}]
execute unless data storage api {vote_count:{status_code:200}} run tellraw @a[tag=is_admin,tag=!ignore] [{text:"(API) Rᴇꜱᴘᴏɴꜱᴇ: ",color:gray},{storage:api,nbt:"vote_count.status_code",color:yellow}]

execute as @n[type=text_display,tag=vote_count] run data merge entity @s {text:[{text:'"Lɪᴠᴇ" Vᴏᴛᴇ Cᴏᴜɴᴛ: ',color:green},{storage:api,nbt:"vote_count.response.votes",color:aqua,underlined:1b}]}
execute as @n[type=text_display,tag=visit_count] run data merge entity @s {text:[{text:'"Lɪᴠᴇ" Vɪꜱɪᴛ Cᴏᴜɴᴛ: ',color:gold},{storage:api,nbt:"vote_count.response.visits",color:yellow,underlined:1b}]}