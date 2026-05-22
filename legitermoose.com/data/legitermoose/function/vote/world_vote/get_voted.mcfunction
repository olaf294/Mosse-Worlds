# If the world is yours, set as yours
$execute if data storage legitermoose:temp {vote_uuid:{temp:[I; $(uid0), $(uid1), $(uid2), $(uid3)]}} run return run scoreboard players set .owns_world legitermoose.temp 1

scoreboard players set .owns_world legitermoose.temp 0