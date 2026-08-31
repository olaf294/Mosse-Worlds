scoreboard players add .total requests 1
scoreboard players add .webhook_count requests 1

$http body value '{"content":"<@&1506665699274264608>","embeds":[{"title":"Arvelyx is online!","description":"Arvelyx has been detected by the Mosse Worlds Player Detect!",\
"color":65280,"thumbnail":{"url":"https://mc-heads.net/head/Arvelyx/50/left"}}],"username":"Mosse Player Detect","avatar_url":"https://mc-heads.net/avatar/Arvelyx",\
"attachments":[]}' headers value {"Content-Type":"application/json"} send "$(url)" POST
scoreboard players set .arvelyx_online playerdetect 1
scoreboard players set .arvelyx_seen playerdetect 1