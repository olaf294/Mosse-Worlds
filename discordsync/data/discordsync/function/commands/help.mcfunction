data modify storage discordsync:data data.msg set value \
    "**__Commands__**:\\\\n  !help — Shows the help text.\\\\n  !list — Lists all players on the world.\\\\n  !ping — Replies with Pong! and calculates the latency.\\\\n  !streak <player> — Outputs the streak of that player."
function discordsync:message/send with storage discordsync:data data