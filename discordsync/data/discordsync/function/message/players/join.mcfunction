data modify storage discordsync:data data.msg set value ""
$data modify storage discordsync:data data.extra set value ",\"embeds\":[{\"color\":47872,\"title\":\"**$(playername)** joined the world.\",\"thumbnail\":{\"url\":\"https://mc-heads.net/head/$(playername)/48/left\"},\"description\":\"Online players: $(count)\"}],\"username\":\"Mosse Sync\""

execute unless score @s ds.style matches -2147483648..2147483647 run scoreboard players set @s ds.style 1

function discordsync:message/send with storage discordsync:data data