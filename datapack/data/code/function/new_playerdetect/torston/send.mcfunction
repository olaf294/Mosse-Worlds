scoreboard players add .total requests 1
scoreboard players add .webhook_count requests 1

$http body value '{"content":"<@&1506665932007804948>","embeds":[{"title":"T0rston is online!","description":"T0rston has been detected by the Mosse Worlds Player Detect!",\
"color":65280,"thumbnail":{"url":"https://mc-heads.net/head/T0rston/50/left"}}],"username":"Mosse Player Detect","avatar_url":"https://mc-heads.net/avatar/T0rston",\
"attachments":[]}' headers value {"Content-Type":"application/json"} send "$(url)" POST
scoreboard players set .torston_online playerdetect 1
scoreboard players set .torston_seen playerdetect 1