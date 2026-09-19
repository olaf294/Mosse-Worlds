scoreboard players add .total requests 1
scoreboard players add .live_vote_count requests 1

execute store result score .mosse_votes_new misc run data get storage api vote_count.response.votes
execute store result score .mosse_visits_new misc run data get storage api vote_count.response.visits

# Calculate differences
scoreboard players operation .diff_mosse_votes misc = .mosse_votes_new misc
scoreboard players operation .diff_mosse_votes misc -= .mosse_votes misc

scoreboard players operation .diff_mosse_visits misc = .mosse_visits_new misc
scoreboard players operation .diff_mosse_visits misc -= .mosse_visits misc

# Admin message
execute unless score .mosse_votes_new misc = .mosse_votes misc run tellraw @a[tag=is_admin] [{text:"ⓘ Vᴏᴛᴇ ᴄᴏᴜɴᴛ ᴄʜᴀɴɢᴇᴅ!\n  ",color:"#0099ff"},\
    {score:{name:".mosse_votes",objective:misc},color:yellow},{text:" → ",color:"#0099ff"},\
    {score:{name:".mosse_votes_new",objective:misc},color:green},{text:" (",color:gray},{text:"+",color:green},{score:{name:".diff_mosse_votes",objective:misc},color:green},{text:")",color:gray}]

execute unless score .mosse_visits_new misc = .mosse_visits misc run tellraw @a[tag=is_admin] [{text:"ⓘ Vɪꜱɪᴛ ᴄᴏᴜɴᴛ ᴄʜᴀɴɢᴇᴅ!\n  ",color:"#0099ff"},\
    {score:{name:".mosse_visits",objective:misc},color:yellow},{text:" → ",color:"#0099ff"},\
    {score:{name:".mosse_visits_new",objective:misc},color:green},{text:" (",color:gray},{text:"+",color:green},{score:{name:".diff_mosse_visits",objective:misc},color:green},{text:")",color:gray}]

# Update current counts
scoreboard players operation .mosse_votes misc = .mosse_votes_new misc
scoreboard players operation .mosse_visits misc = .mosse_visits_new misc

execute if data storage api {vote_count:{status_code:200}} run tellraw @a[tag=is_admin,tag=!ignore] [{text:"(API) Rᴇꜱᴘᴏɴꜱᴇ: ",color:gray},{storage:api,nbt:"vote_count.status_code",plain:1b,color:dark_green}]
execute unless data storage api {vote_count:{status_code:200}} run tellraw @a[tag=is_admin,tag=!ignore] [{text:"(API) Rᴇꜱᴘᴏɴꜱᴇ: ",color:gray},{storage:api,nbt:"vote_count.status_code",plain:1b,color:yellow}]

data merge entity f-0-2-0-0 {text:[{text:'"Lɪᴠᴇ" Vᴏᴛᴇ Cᴏᴜɴᴛ: ',color:green},{score:{name:".mosse_votes",objective:misc},color:aqua,underlined:1b}]}
data merge entity f-0-2-0-1 {text:[{text:'"Lɪᴠᴇ" Vɪꜱɪᴛ Cᴏᴜɴᴛ: ',color:gold},{score:{name:".mosse_visits",objective:misc},color:yellow,underlined:1b}]}