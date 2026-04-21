tag @s add legitermoose.is_playing

# Get Name
function legitermoose:util/get_name

# Special Players
execute if entity @s[name=Legitermoose] run tellraw @a[tag=legitermoose.is_playing] [{text:"[",color:gray},{text:"+",color:dark_green},{text:"] ",color:gray},\
{text:"ᴍᴏᴏꜱᴇ ",color:"#FF00FF"},{text:"| ",color:dark_gray},{text:"L",color:"#FF2050"},{text:"e",color:"#FF2160"},{text:"g",color:"#FF2370"},{text:"i",color:"#FF2480"},{text:"t",color:"#FF2690"},\
{text:"e",color:"#FF27A0"},{text:"r",color:"#FF29AF"},{text:"m",color:"#FF2ABF"},{text:"o",color:"#FF2CCF"},{text:"o",color:"#FF2DDF"},{text:"s",color:"#FF2FEF"},{text:"e",color:"#FF30FF"}]

execute if entity @s[name=Legitermoose] run return run tellraw @a[tag=!legitermoose.is_playing] [{text:"[",color:gray},{text:"→",color:aqua},{text:"] ",color:gray},\
{text:"ᴍᴏᴏꜱᴇ ",color:"#FF00FF"},{text:"| ",color:dark_gray},{text:"L",color:"#FF2050"},{text:"e",color:"#FF2160"},{text:"g",color:"#FF2370"},{text:"i",color:"#FF2480"},{text:"t",color:"#FF2690"},\
{text:"e",color:"#FF27A0"},{text:"r",color:"#FF29AF"},{text:"m",color:"#FF2ABF"},{text:"o",color:"#FF2CCF"},{text:"o",color:"#FF2DDF"},{text:"s",color:"#FF2FEF"},{text:"e",color:"#FF30FF"}]

execute if entity @s[tag=!is_am] run tellraw @a[tag=legitermoose.is_playing] [{text:"[",color:gray},{text:"+",color:dark_green},{text:"] ",color:gray},{storage:"legitermoose:temp",nbt:playername}]
execute if entity @s[tag=!is_am] run return run tellraw @a[tag=!legitermoose.is_playing] [{text:"[",color:gray},{text:"→",color:aqua},{text:"] ",color:gray},{storage:"legitermoose:temp",nbt:playername}]

# Get Array
function legitermoose:lobby/join/to_array/init

execute if entity @s[tag=is_am,tag=!is_fm] run return run function legitermoose:lobby/join/rank/am
execute if entity @s[tag=is_fm,tag=!is_fm2] run return run function legitermoose:lobby/join/rank/fm
execute if entity @s[tag=is_fm2,tag=!is_xm] run return run function legitermoose:lobby/join/rank/fm2
execute if entity @s[tag=is_xm] run return run function legitermoose:lobby/join/rank/xm