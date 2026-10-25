$data modify storage discordsync:data temp.mute.a set value "$(a), $(b)"

data remove storage discordsync:data temp.mute.list[0]

# if there is another entry
execute if data storage discordsync:data temp.mute.list[0] run data modify storage discordsync:data temp.mute.b set from storage discordsync:data temp.mute.list[0].id
execute if data storage discordsync:data temp.mute.list[0] run function discordsync:commands/_mute/list/macro with storage discordsync:data temp.mute