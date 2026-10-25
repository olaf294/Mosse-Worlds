data modify storage discordsync:data temp.mute.list set from storage discordsync:data muted

# if there are no muted users
execute unless data storage discordsync:data muted[0] run data modify storage discordsync:data body.content set value "**There are no muted users.**"
execute unless data storage discordsync:data muted[0] run return run function discordsync:message/send with storage discordsync:data data

# if one muted user
execute if data storage discordsync:data muted[0] unless data storage discordsync:data muted[1] run return run function discordsync:commands/_mute/list/macro_single with storage discordsync:data muted[0]

# if 2+ muted users
execute store result storage discordsync:data temp.mute.count int 1 if data storage discordsync:data muted[]
function discordsync:commands/_mute/list/concat

# set message and send
function discordsync:commands/_mute/list/final with storage discordsync:data temp.mute
function discordsync:message/send with storage discordsync:data data