execute if data storage discordsync:data temp.list[0] unless data storage discordsync:data temp.list[1] run data modify storage discordsync:data temp.name set from storage discordsync:data temp.list[0]
execute if data storage discordsync:data temp.list[0] unless data storage discordsync:data temp.list[1] run return run function discordsync:commands/_list/macro_single with storage discordsync:data temp

say more than 1