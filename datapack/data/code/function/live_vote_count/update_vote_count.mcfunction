scoreboard players add .total requests 1
scoreboard players add .live_vote_count requests 1

execute if data storage a {a:{status_code:200}} run tellraw @a[tag=is_admin,tag=!ignore] [{text:"(API) Rᴇꜱᴘᴏɴꜱᴇ: ",color:gray},{storage:a,nbt:"a.status_code",color:dark_green}]
execute unless data storage a {a:{status_code:200}} run tellraw @a[tag=is_admin,tag=!ignore] [{text:"(API) Rᴇꜱᴘᴏɴꜱᴇ: ",color:gray},{storage:a,nbt:"a.status_code",color:yellow}]

execute as @n[type=text_display,tag=vote_count] run data merge entity @s {text:[{text:'"Lɪᴠᴇ" Vᴏᴛᴇ Cᴏᴜɴᴛ: ',color:green},{storage:api,nbt:"vote_count.response.votes",color:aqua,underlined:1b}]}
execute as @n[type=text_display,tag=visit_count] run data merge entity @s {text:[{text:'"Lɪᴠᴇ" Vɪꜱɪᴛ Cᴏᴜɴᴛ: ',color:gold},{storage:api,nbt:"vote_count.response.visits",color:yellow,underlined:1b}]}