data modify storage discordsync:data body.content set value "Muted user(s)."
function discordsync:message/send with storage discordsync:data data

execute if data storage discordsync:data cm.mentions[0] run data modify storage discordsync:data temp.mute.next set from storage discordsync:data cm.mentions[0].id
execute if data storage discordsync:data cm.mentions[0] run return run function discordsync:commands/_mute/loop with storage discordsync:data temp.mute

# numeric mode: check command that is ran
# 4
data modify storage discordsync:data cm.command set string storage discordsync:data cm.content 1 5
execute if data storage discordsync:data {cm:{command:"mute"}} run data modify storage discordsync:data temp.mute.next set string storage discordsync:data cm.content 6

# 5
data modify storage discordsync:data cm.command set string storage discordsync:data cm.content 1 6
execute if data storage discordsync:data {cm:{command:"block"}} run data modify storage discordsync:data temp.mute.next set string storage discordsync:data cm.content 7

function discordsync:commands/_mute/loop with storage discordsync:data temp.mute