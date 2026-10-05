data modify storage discordsync:data data.msg set value \
    "**__Commands__**:\\\\n  `!help` — Shows the help text.\\\\n  `!list` — Lists all players on the world. (alias: `!listall`)\\\\n  `!ping` — Replies with Pong! and calculates the latency.\\\\n  \
    `!streak` <player> — Outputs the streak of that player.\\\\n  `!info` — Returns information about the world. (alias: `!stats`)\
    \\\\n  `!playerdetect` — Shows if staff is online. (alias: `!pd`)"
function discordsync:message/send with storage discordsync:data data