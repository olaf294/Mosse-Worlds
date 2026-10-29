data modify storage discordsync:data cm set from storage discordsync:data messages.response[-1]

# Default cutoff at 512 chars
data modify storage discordsync:data cm.content set string storage discordsync:data cm.content 0 511

# If command, process that
data modify storage discordsync:data cm.command set string storage discordsync:data cm.content 0 1
execute if data storage discordsync:data {cm:{command:"!"}} run function discordsync:message/command

# Message Processing
function discordsync:message/process_style

# Broadcast the message
function discordsync:message/send_ingame with storage discordsync:data cm.author