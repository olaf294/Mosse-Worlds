#scoreboard players operation @s hour2 = @s offset
#tellraw @s [{text:"Your offset has been updated to "},{score:{name:"@s",objective:hour2}}]

execute if score @s offset matches -60 run scoreboard players remove @s p_offset_h 1
execute if score @s offset matches -15 run scoreboard players remove @s p_offset_m 15
execute if score @s offset matches 15 run scoreboard players add @s p_offset_m 15
execute if score @s offset matches 60 run scoreboard players add @s p_offset_h 1

execute if score @s p_offset_m matches 60.. run scoreboard players remove @s p_offset_m 60

execute if score @s p_offset_m matches ..-1 run scoreboard players add @s p_offset_m 60

# Set the sign and fill 0s
execute if score @s p_offset_h matches 0.. run data modify storage time temp.sign set value "+"
execute unless score @s p_offset_h matches 0.. run data modify storage time temp.sign set value "-"

execute if score @s p_offset_h matches -9..9 run data modify storage time temp.h set value "0"
execute unless score @s p_offset_h matches -9..9 run data modify storage time temp.h set value ""

execute if score @s p_offset_m matches 0 run data modify storage time temp.m set value "0"
execute unless score @s p_offset_m matches 0 run data modify storage time temp.m set value ""

execute if score @s p_offset_h matches ..-1 run tag @s add m_offs
execute if score @s p_offset_h matches ..-1 run scoreboard players operation @s p_offset_h *= -1 numbers


tellraw @s [{text:"\n    ᴜᴘᴅᴀᴛᴇ ᴄʟᴏᴄᴋ ᴏꜰꜰꜱᴇᴛ",color:gold},"\n   ",\
{text:"«     ",color:dark_red,click_event:{action:run_command,command:"/trigger offset set -60"}},{text:"‹  ",color:red,click_event:{action:run_command,command:"/trigger offset set -15"}},\
{storage:time,nbt:"temp.sign",interpret:1b,color:yellow},{storage:time,nbt:"temp.h",interpret:1b,color:yellow},{score:{name:"@s",objective:p_offset_h},color:yellow},{text:":",color:yellow},{storage:time,nbt:"temp.m",interpret:1b,color:yellow},{score:{name:"@s",objective:p_offset_m},color:yellow},\
{text:"  ›",color:green,click_event:{action:run_command,command:"/trigger offset set 15"}},{text:"     »",color:dark_green,click_event:{action:run_command,command:"/trigger offset set 60"}},"\n",\
{text:" -1ʜ  ",color:dark_red,click_event:{action:run_command,command:"/trigger offset set -60"}},{text:"-15ᴍ",color:red,click_event:{action:run_command,command:"/trigger offset set -15"}},{text:"      ",color:yellow},\
{text:" +15ᴍ ",color:green,click_event:{action:run_command,command:"/trigger offset set 15"}},{text:" +1ʜ ",color:dark_green,click_event:{action:run_command,command:"/trigger offset set 60"}}]

scoreboard players set @s offset 0

execute if entity @s[tag=m_offs] run scoreboard players operation @s p_offset_h *= -1 numbers
tag @s remove m_offs