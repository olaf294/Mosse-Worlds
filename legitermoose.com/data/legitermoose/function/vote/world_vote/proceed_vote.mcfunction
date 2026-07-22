# Store Vote in Storage
$data modify storage legitermoose:votes votes[{id:$(id)}].uuids prepend value {uuid:[],name:"unknown",id:-1,count:-1}
$data modify storage legitermoose:votes votes[{id:$(id)}].uuids[0].uuid set from entity @s UUID
$execute store result storage legitermoose:votes votes[{id:$(id)}].uuids[0].id int 1 run scoreboard players get @s id
function legitermoose:util/get_name
$data modify storage legitermoose:votes votes[{id:$(id)}].uuids[0].name set from storage legitermoose:temp playername

execute at @s run playsound entity.player.levelup ui @s ~ ~ ~ 1 2

$data modify storage legitermoose:temp id.id set value $(id)

# add votes
execute if entity @s[tag=!is_am] run function legitermoose:vote/world_vote/voters/non with storage legitermoose:temp id
execute if entity @s[tag=is_am,tag=!is_fm] run function legitermoose:vote/world_vote/voters/am with storage legitermoose:temp id
execute if entity @s[tag=is_fm,tag=!is_fm2] run function legitermoose:vote/world_vote/voters/fm with storage legitermoose:temp id
execute if entity @s[tag=is_fm2,tag=!is_xm] run function legitermoose:vote/world_vote/voters/fm2 with storage legitermoose:temp id
execute if entity @s[tag=is_xm] run function legitermoose:vote/world_vote/voters/xm with storage legitermoose:temp id

# store in the world that you have voted
$execute store result storage legitermoose:worlds worlds[{world_id:$(id)}].votes int 1 run scoreboard players get .world_vote legitermoose.misc
function legitermoose:world_browser/sort/votes/start