execute unless data storage discordsync:data messages.response[] run return 0

execute unless data storage discordsync:data messages.response[-1].author.bot run function discordsync:message/process
data remove storage discordsync:data messages.response[-1]

function discordsync:receive_loop