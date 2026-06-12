execute unless data storage legitermoose:http ingoing{status_code:200} run return 0
execute store result score $id code run data get storage legitermoose:http ingoing.response.player
execute as @a if score @s id = $id code run tellraw @s {storage:"legitermoose:http", nbt:"ingoing.response.message1", interpret:true}
execute as @a if score @s id = $id code run tellraw @s {storage:"legitermoose:http", nbt:"ingoing.response.message2", interpret:true}