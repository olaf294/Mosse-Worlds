data modify entity @n[tag=players_test] text set value {selector:"@a", separator:"\n"}
data modify storage listall:temp players set value ""
data modify storage listall:temp players1 set from entity @n[tag=players_test] text.extra
data modify storage listall:temp players2 set value []

function code:listall_test/loop_1

# right here
execute store result storage discordsync:data temp.count int 1 if entity @a
function code:listall_test/macro with storage discordsync:data temp

data modify storage listall:temp current set from storage listall:temp players2[0]
execute if data storage listall:temp players2[] run function code:listall_test/loop_2 with storage listall:temp