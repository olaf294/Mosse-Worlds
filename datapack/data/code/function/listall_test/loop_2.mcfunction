$data modify storage listall:temp players set value "$(players)$(current)"

data remove storage listall:temp players2[0]

data modify storage listall:temp current set from storage listall:temp players2[0]
execute if data storage listall:temp players2[] run function code:listall_test/loop_2 with storage listall:temp