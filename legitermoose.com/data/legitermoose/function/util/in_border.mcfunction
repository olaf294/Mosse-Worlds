execute if entity @s[tag=is_admin] run return fail

tellraw @s {text:"You left the border and have been sent back to lobby.",color:red}
function legitermoose:triggers/lobby