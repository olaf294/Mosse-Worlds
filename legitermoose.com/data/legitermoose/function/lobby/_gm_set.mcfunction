$data modify storage legitermoose:gm worlds[{id:0}].uuids[{id:$(uuid)}].gamemode set value $(gm)
$data modify storage legitermoose:ranks worlds[{id:0}].uuids[{id:$(uuid)}].rank set value $(rank)

tp @s 1000 64 0 90 0
execute at @s run playsound entity.wither.death master @s ~ ~ ~ 1 1
clear @s