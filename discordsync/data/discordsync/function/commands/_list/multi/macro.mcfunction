$data modify storage discordsync:data temp.concat.a set value "$(a), $(b)"

data remove storage discordsync:data temp.list[0]

# if there is another entry
execute if data storage discordsync:data temp.list[0] run data modify storage discordsync:data temp.concat.b set from storage discordsync:data temp.list[0]
execute if data storage discordsync:data temp.list[0] run function discordsync:commands/_list/multi/macro with storage discordsync:data temp.concat