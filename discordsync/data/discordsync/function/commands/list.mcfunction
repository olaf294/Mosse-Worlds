execute store result storage discordsync:data temp.count int 1 if entity @a

data remove storage discordsync:data temp.list
execute as @a run function discordsync:commands/_list/add

# if only one player is online
execute if data storage discordsync:data temp.list[0] unless data storage discordsync:data temp.list[1] run data modify storage discordsync:data temp.name set from storage discordsync:data temp.list[0]
execute if data storage discordsync:data temp.list[0] unless data storage discordsync:data temp.list[1] run return run function discordsync:commands/_list/macro_single with storage discordsync:data temp

# if more are online
function code:listall_test/test
data modify storage discordsync:data data.msg set from storage listall:temp players
function discordsync:message/send with storage discordsync:data data