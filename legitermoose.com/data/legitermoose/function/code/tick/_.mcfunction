scoreboard players add $tick code 1
execute unless score $tick code matches 2.. run return 0
scoreboard players set $tick code 0

data remove storage legitermoose:code online_worlds
execute as @a run function legitermoose:code/tick/get_world

data modify storage legitermoose:code online_worlds.temp.event set value "world_events_tick"
function legitermoose:code/tick/world_loop