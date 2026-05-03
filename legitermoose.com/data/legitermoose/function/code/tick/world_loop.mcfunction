execute unless data storage legitermoose:code online_worlds.worlds[] run return 0

data modify storage legitermoose:code online_worlds.temp.world_id set from storage legitermoose:code online_worlds.worlds[0]
data remove storage legitermoose:code online_worlds.worlds[0]
function legitermoose:code/run_event with storage legitermoose:code online_worlds.temp