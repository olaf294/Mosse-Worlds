data modify storage legitermoose:code code.op set from storage legitermoose:code code.instruction[0]

execute if data storage legitermoose:code code{op:0} run return run function legitermoose:code/instructions/push_string
execute if data storage legitermoose:code code{op:1} run return run function legitermoose:code/instructions/push_player
execute if data storage legitermoose:code code{op:2} run return run function legitermoose:code/instructions/get_player_name
#execute if data storage legitermoose:code code{op:3} run return run function legitermoose:code/instructions/get_player_uuid
execute if data storage legitermoose:code code{op:4} run return run function legitermoose:code/instructions/print
execute if data storage legitermoose:code code{op:5} run return run function legitermoose:code/instructions/tell_player
execute if data storage legitermoose:code code{op:6} run return run function legitermoose:code/instructions/setblock
#execute if data storage legitermoose:code code{op:7} run return run function legitermoose:code/instructions/jump
execute if data storage legitermoose:code code{op:8} run return run function legitermoose:code/instructions/load_if_true
#execute if data storage legitermoose:code code{op:9} run return run function legitermoose:code/instructions/not
#execute if data storage legitermoose:code code{op:10} run return run function legitermoose:code/instructions/and
#execute if data storage legitermoose:code code{op:11} run return run function legitermoose:code/instructions/or
execute if data storage legitermoose:code code{op:12} run return run function legitermoose:code/instructions/equal
execute if data storage legitermoose:code code{op:13} run return run function legitermoose:code/instructions/not_equal
#execute if data storage legitermoose:code code{op:14} run return run function legitermoose:code/instructions/greater
#execute if data storage legitermoose:code code{op:15} run return run function legitermoose:code/instructions/less
#execute if data storage legitermoose:code code{op:16} run return run function legitermoose:code/instructions/greater_equal
#execute if data storage legitermoose:code code{op:17} run return run function legitermoose:code/instructions/less_equal
execute if data storage legitermoose:code code{op:18} run return run function legitermoose:code/instructions/text_join

tellraw @a[tag=is_dev] ["Unknown Instruction: ", {storage:"legitermoose:code", nbt:"code.instruction"}]
return 0