execute if data storage discordsync:data temp.list[0] run data modify storage discordsync:data temp.concat.a set from storage discordsync:data temp.list[0]
execute if data storage discordsync:data temp.list[1] run data modify storage discordsync:data temp.concat.b set from storage discordsync:data temp.list[1]

# remove first entry
data remove storage discordsync:data temp.list[0]

# start concat
function discordsync:commands/_list/multi/macro with storage discordsync:data temp.concat