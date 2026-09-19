function code:sidebar/tps/update_sidebar

$scoreboard players operation $(name) last_played = .time time
$function discordsync:message/players/leave {playername:"$(name)",count:$(player_count)}