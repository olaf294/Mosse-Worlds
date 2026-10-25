## MATCHING commands
execute if data storage discordsync:data {cm:{command:"info"}} run return run function ds-addons:commands/info
execute if data storage discordsync:data {cm:{command:"stats"}} run return run function ds-addons:commands/info
execute if data storage discordsync:data {cm:{command:"ping"}} run return run function ds-addons:commands/ping

execute if data storage discordsync:data {cm:{command:"pd"}} run return run function ds-addons:commands/playerdetect
execute if data storage discordsync:data {cm:{command:"playerdetect"}} run return run function ds-addons:commands/playerdetect

## STARTING_WITH commands
data modify storage discordsync:data cm.command set string storage discordsync:data cm.content 1 7
execute if data storage discordsync:data {cm:{command:"streak"}} run return run function ds-addons:commands/streak