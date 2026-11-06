scoreboard players add .total requests 1
scoreboard players add .discordsync requests 1

$http headers storage discordsync:data header body storage discordsync:data body send "https://discord.com/api/v10/channels/$(id)/messages" POST