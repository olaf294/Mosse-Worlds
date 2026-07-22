$execute store result score legitermoose.temp .wc_count if data storage legitermoose:ranks worlds[{id:$(id)}].uuids[{rank:2}]
$execute store result score legitermoose.temp .admin_count if data storage legitermoose:ranks worlds[{id:$(id)}].uuids[{rank:3}]
$execute store result score legitermoose.temp .dev_count if data storage legitermoose:ranks worlds[{id:$(id)}].uuids[{rank:4}]
$execute store result score legitermoose.temp .coowner_count if data storage legitermoose:ranks worlds[{id:$(id)}].uuids[{rank:6}]
scoreboard players operation .wc_count legitermoose.temp += .coowner_count legitermoose.temp
scoreboard players operation .wc_count legitermoose.temp += .dev_count legitermoose.temp
scoreboard players operation .wc_count legitermoose.temp += .admin_count legitermoose.temp

execute unless score .wc_count legitermoose.temp matches 1 run return run tellraw @s [{text:"You have ",color:green},{score:{name:".wc_count",objective:legitermoose.temp},color:gold},{text:" world editors.",color:green}]
tellraw @s [{text:"You have ",color:green},{text:"1",color:gold},{text:" world editor.",color:green}]