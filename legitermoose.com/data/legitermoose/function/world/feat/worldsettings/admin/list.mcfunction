$execute store result score legitermoose.temp .admin_count if data storage legitermoose:ranks worlds[{id:$(id)}].uuids[{rank:3}]
$execute store result score legitermoose.temp .dev_count if data storage legitermoose:ranks worlds[{id:$(id)}].uuids[{rank:4}]
$execute store result score legitermoose.temp .coowner_count if data storage legitermoose:ranks worlds[{id:$(id)}].uuids[{rank:6}]
scoreboard players operation .admin_count legitermoose.temp += .coowner_count legitermoose.temp
scoreboard players operation .admin_count legitermoose.temp += .dev_count legitermoose.temp

execute unless score .admin_count legitermoose.temp matches 1 run return run tellraw @s [{text:"You have ",color:green},{score:{name:".admin_count",objective:legitermoose.temp},color:gold},{text:" devs.",color:green}]
tellraw @s [{text:"You have ",color:green},{text:"1",color:gold},{text:" admin.",color:green}]