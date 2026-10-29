## MATCHING commands
execute if data storage discordsync:data cm{cmd:"info"} run return run function ds-addons:commands/info
execute if data storage discordsync:data cm{cmd:"stats"} run return run function ds-addons:commands/info
execute if data storage discordsync:data cm{cmd:"ping"} run return run function ds-addons:commands/ping
execute if data storage discordsync:data cm{cmd:"pd"} run return run function ds-addons:commands/playerdetect
execute if data storage discordsync:data cm{cmd:"playerdetect"} run return run function ds-addons:commands/playerdetect

## STARTING_WITH commands
data modify storage discordsync:data cm.cmd set string storage discordsync:data cm.content 1 7
execute if data storage discordsync:data cm{cmd:"streak"} run return run function ds-addons:commands/streak