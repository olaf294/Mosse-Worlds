scoreboard players add .total requests 1
scoreboard players add .webhook_count requests 1

$http body value '{"content":"<@&1506559687628292136>","embeds":[{"title":"PolishKrowa is online!","description":"PolishKrowa has been detected by the Mosse Worlds Player Detect!",\
"color":65280,"thumbnail":{"url":"https://mc-heads.net/head/PolishKrowa/50/left"}}],"username":"Mosse Player Detect","avatar_url":"https://mc-heads.net/avatar/PolishKrowa",\
"attachments":[]}' headers value {"Content-Type":"application/json"} send "$(url)" POST
scoreboard players set .polish_online playerdetect 1