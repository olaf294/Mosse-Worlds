$execute if data storage api blacklist{worlds:["$(world_uuid)"]} run return 1
$execute if data storage api blacklist{owners:["$(owner_uuid)"]} run return 2
return 0