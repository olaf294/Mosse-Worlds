execute unless data storage listall:temp players1[] run return 0

execute if data storage listall:temp players1[0].hover_event.name run data modify storage listall:temp players2 append from storage listall:temp players1[0].hover_event.name
execute unless data storage listall:temp players1[0].hover_event.name run data modify storage listall:temp players2 append value ", "

data remove storage listall:temp players1[0]

function code:listall_test/loop_1