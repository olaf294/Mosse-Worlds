data modify storage discordsync:data body.content set value "Unmuted user(s)."
function discordsync:message/send with storage discordsync:data data

execute if data storage discordsync:data cm.mentions[0] run data modify storage discordsync:data temp.unmute.next set from storage discordsync:data cm.mentions[0].id
execute if data storage discordsync:data cm.mentions[0] run return run function discordsync:commands/_unmute/loop with storage discordsync:data temp.unmute

# numeric mode: check command that is ran
# 4
data modify storage discordsync:data cm.command set string storage discordsync:data cm.content 1 7
execute if data storage discordsync:data {cm:{command:"unmute"}} run data modify storage discordsync:data temp.unmute.next set string storage discordsync:data cm.content 8

# 5
data modify storage discordsync:data cm.command set string storage discordsync:data cm.content 1 8
execute if data storage discordsync:data {cm:{command:"unblock"}} run data modify storage discordsync:data temp.unmute.next set string storage discordsync:data cm.content 9

function discordsync:commands/_unmute/loop with storage discordsync:data temp.unmute