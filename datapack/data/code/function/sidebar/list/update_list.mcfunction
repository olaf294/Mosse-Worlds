execute store result storage legitermoose:temp list.id int 1 run scoreboard players get @s id
#execute store result storage legitermoose:temp list.streak int 1 run scoreboard players get @s ds.streak
execute store result storage legitermoose:temp list.world_id int 1 run scoreboard players get @s worldid

# convert to string to have no issues with plain:1b
data modify storage legitermoose:temp list.world_id set string storage legitermoose:temp list.world_id
execute if score @s worldid matches 0 run data modify storage legitermoose:temp list.world_id set value "ʟ"
execute if score @s worldid matches -1 run data modify storage legitermoose:temp list.world_id set value "ꜱ"

execute if score @s worldid matches -1..0 run return run scoreboard players display numberformat @s list fixed ["",{text:"👤 ",color:gray},{storage:"legitermoose:temp",nbt:"list.id",color:green,plain:1b},{text:" | ",color:dark_gray},{text:"🌎 ",color:gray},{storage:"legitermoose:temp",nbt:"list.world_id",color:"#ff8800",interpret:1b}]

scoreboard players display numberformat @s list fixed ["",{text:"👤 ",color:gray},{storage:"legitermoose:temp",nbt:"list.id",color:green,plain:1b},{text:" | ",color:dark_gray},{text:"🌎 ",color:gray},{storage:"legitermoose:temp",nbt:"list.world_id",color:yellow,interpret:1b}]