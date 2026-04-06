tellraw @a[tag=legitermoose.is_playing] [{text:"[",color:gray},{text:"+",color:dark_green},{text:"] ",color:gray},{text:"ꜰᴍ ",color:"#8888ff"},{text:"| ",color:dark_gray},\
{storage:"str",nbt:"out[0]",color:"#7777FF"},\
{storage:"str",nbt:"out[1]",color:"#66BBFF"},\
{storage:"str",nbt:"out[2]",color:aqua}]

tellraw @a[tag=!legitermoose.is_playing] [{text:"[",color:gray,hover_event:{action:show_text,value:[{storage:"legitermoose:temp",nbt:playername},{text:" has mysteriously disappeared.",color:white}]}},{text:"→",color:aqua},{text:"] ",color:gray},{text:"ꜰᴍ ",color:"#8888ff"},{text:"| ",color:dark_gray},\
{storage:"str",nbt:"out[0]",color:"#7777FF"},\
{storage:"str",nbt:"out[1]",color:"#66BBFF"},\
{storage:"str",nbt:"out[2]",color:aqua}]