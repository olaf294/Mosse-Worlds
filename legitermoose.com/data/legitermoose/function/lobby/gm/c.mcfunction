data modify storage legitermoose:temp gm.uuid set from entity @s UUID
data modify storage legitermoose:temp gm.gm set value 1
data modify storage legitermoose:temp gm.rank set value 3

function legitermoose:lobby/_gm_set with storage legitermoose:temp gm

tellraw @s {translate:"gameMode.changed",with:[{translate:"gameMode.creative"}]}