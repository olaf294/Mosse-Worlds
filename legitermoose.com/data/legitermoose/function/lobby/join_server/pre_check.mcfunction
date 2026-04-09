#   execute unless entity @s[tag=legitermoose.is_whitelisted] run 
#   execute unless entity @s[tag=legitermoose.is_whitelisted] at @s run return run playsound block.note_block.bass master @s ~ ~ ~ 1 0.5 1

$execute if data storage legitermoose:bans global[{id:$(UUID)}] run tellraw @s [{text:"You have been denied access to the server.",color:red}]
$execute if data storage legitermoose:bans global[{id:$(UUID)}] run return run playsound block.note_block.bass master @s ~ ~ ~ 2 0.5 1

execute unless score .lobby_enabled legitermoose.misc matches 1 if entity @s[tag=!is_admin] run return run tellraw @s {text:"The lobby has been disabled due to maintenance.",color:red,italic:1b}


tellraw @s {text:"Connection approved.",color:green}

function legitermoose:items/lobby/update

inventory @s block 992 54 5 <b> </b> <b> </b> <b> </b> <b> </b> <b> </b><blue><u>legitermoose.com