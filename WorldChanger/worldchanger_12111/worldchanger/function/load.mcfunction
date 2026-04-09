tellraw @a[tag=is_admin] [{text:"[",color:gray},{text:"Wᴏʀʟᴅ",color:gold},{text:"Cʜᴀɴɢᴇʀ",color:yellow},{text:"] ",color:gray},{text:"Lᴏᴀᴅᴇᴅ!",color:gold}]

scoreboard objectives add wc.pos1_x dummy
scoreboard objectives add wc.pos1_y dummy
scoreboard objectives add wc.pos1_z dummy
scoreboard objectives add wc.pos2_x dummy
scoreboard objectives add wc.pos2_y dummy
scoreboard objectives add wc.pos2_z dummy

scoreboard objectives add wc.values dummy
scoreboard players set .max_blocks wc.values 1000

scoreboard objectives add wc.cooldown dummy
scoreboard objectives add wc.leave custom:leave_game

scoreboard objectives add wc.nums dummy
scoreboard players set -1 wc.nums -1

gamerule max_block_modifications 1000000