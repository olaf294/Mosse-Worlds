clear @s

execute at @s run playsound entity.experience_orb.pickup block @s ~ ~ ~ 10 1
execute if score @s worldid matches -8 run tellraw @s [{text:"Jᴏɪɴᴇᴅ ",color:dark_green},{text:"Lᴏʙʙʏ",color:green},{text:".",color:dark_green}]
execute unless score @s worldid matches -8 run tellraw @s [{text:"Jᴏɪɴᴇᴅ Wᴏʀʟᴅ ID ",color:dark_green},{score:{name:"@s",objective:worldid},color:green},{text:".",color:dark_green}]

# merge data
function legitermoose:util/gm/world_gm

execute if score @s legitermoose.rank matches 10 run return fail
execute if entity @s[tag=is_admin] run return fail

data merge entity @s {abilities:{mayfly:0b,flying:0b}}