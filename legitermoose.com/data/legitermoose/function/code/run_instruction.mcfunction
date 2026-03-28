execute if data storage legitermoose:code code{instruction:[0]} run return run function legitermoose:code/instructions/push_string
execute if data storage legitermoose:code code{instruction:[1]} run return run function legitermoose:code/instructions/push_player
execute if data storage legitermoose:code code{instruction:[2]} run return run function legitermoose:code/instructions/get_player_name
#execute if data storage legitermoose:code code{instruction:[3]} run return run function legitermoose:code/instructions/get_player_uuid
execute if data storage legitermoose:code code{instruction:[4]} run return run function legitermoose:code/instructions/print
execute if data storage legitermoose:code code{instruction:[5]} run return run function legitermoose:code/instructions/tell_player
#execute if data storage legitermoose:code code{instruction:[6]} run return run function legitermoose:code/instructions/jump_if_true
#execute if data storage legitermoose:code code{instruction:[7]} run return run function legitermoose:code/instructions/jump_if_not_true
#execute if data storage legitermoose:code code{instruction:[8]} run return run function legitermoose:code/instructions/equals
#execute if data storage legitermoose:code code{instruction:[9]} run return run function legitermoose:code/instructions/not_equals
#execute if data storage legitermoose:code code{instruction:[10]} run return run function legitermoose:code/instructions/less
#execute if data storage legitermoose:code code{instruction:[11]} run return run function legitermoose:code/instructions/greater
#execute if data storage legitermoose:code code{instruction:[12]} run return run function legitermoose:code/instructions/less_equals
#execute if data storage legitermoose:code code{instruction:[13]} run return run function legitermoose:code/instructions/greater_equals
execute if data storage legitermoose:code code{instruction:[14]} run return run function legitermoose:code/instructions/text_join

tellraw @a[tag=is_dev] ["Unknown Instruction: ", {storage:"legitermoose:code", nbt:"code.instruction"}]
return 0