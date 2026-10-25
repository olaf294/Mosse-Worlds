data modify storage discordsync:data body.content set value \
    "**__Commands__**:\n  `!help` — Shows the help text.\n  `!list` — Lists all players on the world. (alias: `!listall`)\n\n\
    **__Staff Commands__** *(only work with Bot Master role)*\n  `!eval <command>` — Runs a command from a command block.\n  \
    `!mute <list[id]>` — Stops sending messages from mentioned users. (alias: `!block`)\n  `!unmute <list[id]>` — Re-enables sending messages from mentioned users. (alias: `!unblock`)"

function #ds-addons:edit_help
function discordsync:message/send with storage discordsync:data data