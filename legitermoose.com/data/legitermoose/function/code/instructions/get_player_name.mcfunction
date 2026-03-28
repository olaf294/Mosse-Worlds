data modify storage legitermoose:code code.temp.player_id set from storage legitermoose:code code.stack[-1]
data remove storage legitermoose:code code.stack[-1]
function legitermoose:code/instructions/zzzprivate/get_player_name with storage legitermoose:code code.temp
data modify storage legitermoose:code code.stack append from storage legitermoose:temp playername