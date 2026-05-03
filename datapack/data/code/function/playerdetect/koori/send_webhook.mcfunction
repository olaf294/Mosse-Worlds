scoreboard players add .total requests 1
scoreboard players add .webhook_count requests 1

$http body value '{"content":"<@&1498362077008363661>","embeds":[{"title":"KooriKitsune38 is online!","description":"KooriKitsune38 has been detected by the Mosse Worlds Player Detect!",\
"color":65280,"thumbnail":{"url":"https://mc-heads.net/head/KooriKitsune38/50/left"}}],"username":"Mosse Player Detect","avatar_url":"https://mc-heads.net/avatar/KooriKitsune38",\
"attachments":[]}' headers value {"Content-Type":"application/json"} send "$(url)" POST
scoreboard players set .koori_online playerdetect 1