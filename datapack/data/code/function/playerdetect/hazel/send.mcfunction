scoreboard players add .total requests 1
scoreboard players add .webhook_count requests 1

#scoreboard players set .hazel_online playerdetect 1
scoreboard players set .hazel_seen playerdetect 1

$http body value '{"content":"<@&1558001474473300019>","embeds":[{"title":"hablethedev is online!","description":"hablethedev has been detected by the Mosse Worlds Player Detect!",\
"color":65280,"thumbnail":{"url":"https://mc-heads.net/head/hablethedev/50/left"}}],"username":"Mosse Player Detect","avatar_url":"https://mc-heads.net/avatar/hablethedev",\
"attachments":[]}' headers value {"Content-Type":"application/json"} send "$(url)" POST