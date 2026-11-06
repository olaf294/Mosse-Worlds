function discordsync:util/prepare_embed

$data modify storage discordsync:data body.embeds set value [{"color":14483456,"title":"**$(name)** left the world.","thumbnail":{"url":"https://mc-heads.net/head/$(name)/48/left"},"description":"Online players: $(count)"}]

function discordsync:message/send with storage discordsync:data data