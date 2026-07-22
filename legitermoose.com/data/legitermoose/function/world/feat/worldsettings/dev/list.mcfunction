$execute store result score legitermoose.temp .dev_count if data storage legitermoose:ranks worlds[{id:$(id)}].uuids[{rank:4}]
$execute store result score legitermoose.temp .coowner_count if data storage legitermoose:ranks worlds[{id:$(id)}].uuids[{rank:6}]
scoreboard players operation .dev_count legitermoose.temp += .coowner_count legitermoose.temp

execute unless score .dev_count legitermoose.temp matches 1 run return run tellraw @s [{text:"You have ",color:green},{score:{name:".dev_count",objective:legitermoose.temp},color:gold},{text:" devs.",color:green}]
tellraw @s [{text:"You have ",color:green},{text:"1",color:gold},{text:" dev.",color:green}]