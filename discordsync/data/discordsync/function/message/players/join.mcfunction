data modify storage discordsync:data body.content set value ""
data remove storage discordsync:data body.message_reference

data modify storage discordsync:data body.username set value "Mosse Sync"
$data modify storage discordsync:data body.embeds set value [{"color":47872,"title":"**$(playername)** joined the world.","thumbnail":{"url":"https://mc-heads.net/head/$(playername)/48/left"},"description":"Online players: $(count)"}]

execute unless score @s ds.style matches -2147483648..2147483647 run scoreboard players set @s ds.style 1

function discordsync:message/send with storage discordsync:data data