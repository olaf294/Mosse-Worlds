scoreboard players add .total requests 1
scoreboard players add .discordsync requests 1

$http headers value {Content-Type: "application/json"} body value '{"username":"$(user)","avatar_url":"https://mc-heads.net/avatar/$(user)","content":"$(msg)","allowed_mentions":{"parse":[]}}' send "$(url)"

data remove storage discordsync:data temp.send.url

function discordsync:send/send_outgoing_ingame