data modify storage discordsync:data body.content set value ""
data remove storage discordsync:data body.message_reference

data modify storage discordsync:data body.username set value "Mosse Sync"
$data modify storage discordsync:data body.embeds set value [{"color":14483456,"title":"**$(playername)** joined the world.","thumbnail":{"url":"https://mc-heads.net/head/$(playername)/48/left"},"description":"Online players: $(count)"}]

function discordsync:message/send with storage discordsync:data data