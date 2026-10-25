execute if data storage discordsync:data temp.mute.list[0] run data modify storage discordsync:data temp.mute.a set from storage discordsync:data temp.mute.list[0].id
execute if data storage discordsync:data temp.mute.list[1] run data modify storage discordsync:data temp.mute.b set from storage discordsync:data temp.mute.list[1].id

# remove first entry
data remove storage discordsync:data temp.mute.list[0]

# start concat
function discordsync:commands/_mute/list/macro with storage discordsync:data temp.mute