## preparations
# remove body
data remove storage discordsync:data body

data modify storage discordsync:data data.prev_cmd set from storage discordsync:data cm.id
data modify storage discordsync:data cm.cmd set string storage discordsync:data cm.content 1

data modify storage discordsync:data body.content set value "Something went wrong!"

function discordsync:util/set_reference with storage discordsync:data data

## check for MATCHING commands
execute if data storage discordsync:data cm{cmd:"list"} run return run function discordsync:commands/list
execute if data storage discordsync:data cm{cmd:"listall"} run return run function discordsync:commands/list
execute if data storage discordsync:data cm{cmd:"help"} run return run function discordsync:commands/help
execute if data storage discordsync:data cm{cmd:"version"} run return run function discordsync:commands/version
execute if data storage discordsync:data cm{cmd:"mute list"} run return run function discordsync:commands/_mute/list_muted
execute if data storage discordsync:data cm{cmd:"block list"} run return run function discordsync:commands/_mute/list_muted

## check for STARTING_WITH commands
# 4
data modify storage discordsync:data cm.cmd set string storage discordsync:data cm.content 1 5
execute if data storage discordsync:data cm{cmd:"eval"} run return run function discordsync:commands/eval
execute if data storage discordsync:data cm{cmd:"mute"} run return run function discordsync:commands/mute

# 5
data modify storage discordsync:data cm.cmd set string storage discordsync:data cm.content 1 6
execute if data storage discordsync:data cm{cmd:"block"} run return run function discordsync:commands/mute

# 6
data modify storage discordsync:data cm.cmd set string storage discordsync:data cm.content 1 7
execute if data storage discordsync:data cm{cmd:"unmute"} run return run function discordsync:commands/unmute

# 7
data modify storage discordsync:data cm.cmd set string storage discordsync:data cm.content 1 8
execute if data storage discordsync:data cm{cmd:"unblock"} run return run function discordsync:commands/unmute

## Run ds-addons function tag
function #ds-addons:commands

## if no command
# soon^tm