data modify storage legitermoose:world_browser world set from storage legitermoose:world_browser worlds[0]

data modify storage legitermoose:world_browser item set value {}
data modify storage legitermoose:world_browser item.components.custom_data set value {custom_ui:1b, world:1b}
data modify storage legitermoose:world_browser item.components.custom_data.world_id set from storage legitermoose:world_browser world.world_id
execute store result storage legitermoose:world_browser item.components.custom_data.page int 1 run scoreboard players get page legitermoose.temp
data modify storage legitermoose:world_browser item.id set from storage legitermoose:world_browser world.icon
data modify storage legitermoose:world_browser item.components.profile set from storage legitermoose:world_browser world.owner
data modify storage legitermoose:world_browser item.components.tooltip_display set value {hidden_components:["profile"]}

scoreboard players set player_count legitermoose.temp 0
execute store result score world_id legitermoose.temp run data get storage legitermoose:world_browser world.world_id
execute as @a if score @s worldid = world_id legitermoose.temp run scoreboard players add player_count legitermoose.temp 1
execute store result storage legitermoose:world_browser macro.count int 1 run scoreboard players get player_count legitermoose.temp
scoreboard players reset player_count legitermoose.temp
scoreboard players reset world_id legitermoose.temp

data modify storage legitermoose:world_browser macro.votes set from storage legitermoose:world_browser world.votes
data modify storage legitermoose:world_browser macro.visits set from storage legitermoose:world_browser world.visits
function legitermoose:world_browser/new_maybe/refresh/format_owner

function legitermoose:world_browser/new_maybe/refresh/lore with storage legitermoose:world_browser macro
data remove storage legitermoose:world_browser macro


function legitermoose:world_browser/new_maybe/refresh/format_owner


data modify storage legitermoose:world_browser page append from storage legitermoose:world_browser item
data remove storage legitermoose:world_browser item