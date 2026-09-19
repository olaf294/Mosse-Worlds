$execute store result score .dgm legitermoose.temp run data get storage legitermoose:gm worlds[{id:$(id)}].default

$execute if score .dgm legitermoose.temp matches 0 run data modify storage legitermoose:gm worlds[{id:$(id)}].default set value 1
$execute if score .dgm legitermoose.temp matches 1 run data modify storage legitermoose:gm worlds[{id:$(id)}].default set value 2
$execute if score .dgm legitermoose.temp matches 2 run data modify storage legitermoose:gm worlds[{id:$(id)}].default set value 3
$execute if score .dgm legitermoose.temp matches 3 run data modify storage legitermoose:gm worlds[{id:$(id)}].default set value 0