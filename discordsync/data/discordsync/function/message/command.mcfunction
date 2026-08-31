data modify storage discordsync:data cm.command set string storage discordsync:data cm.content 1

data modify storage discordsync:data data.msg set value "Something went wrong!"
data modify storage discordsync:data data.extra set value ""
#execute if data storage discordsync:data {cm:{command:"67"}} run return run function discordsync:commands/67
execute if data storage discordsync:data {cm:{command:"list"}} run return run function discordsync:commands/list
execute if data storage discordsync:data {cm:{command:"ping"}} run return run function discordsync:commands/ping with storage discordsync:data data
execute if data storage discordsync:data {cm:{command:"help"}} run return run function discordsync:commands/help

# check for STARTING_WITH commands
data modify storage discordsync:data cm.command set string storage discordsync:data cm.content 1 5
execute if data storage discordsync:data {cm:{command:"eval"}} run return run function discordsync:commands/eval

data modify storage discordsync:data cm.command set string storage discordsync:data cm.content 1 7
execute if data storage discordsync:data {cm:{command:"streak"}} run return run function discordsync:commands/streak