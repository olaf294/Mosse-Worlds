execute store result storage discordsync:data temp.info.votes int 1 run scoreboard players get .mosse_votes misc
execute store result storage discordsync:data temp.info.visits int 1 run scoreboard players get .mosse_visits misc
execute store result storage discordsync:data temp.info.registered int 1 run scoreboard players get .global id
execute store result storage discordsync:data temp.info.count_spawn int 1 if entity @a[tag=!legitermoose.is_playing]
execute store result storage discordsync:data temp.info.count_legiter int 1 run scoreboard players get .players legitermoose.misc
function discordsync:commands/_info/set_message with storage discordsync:data temp.info
function discordsync:message/send with storage discordsync:data data