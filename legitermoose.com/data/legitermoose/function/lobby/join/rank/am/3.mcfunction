tellraw @a[tag=legitermoose.is_playing] [{text:"[",color:gray},{text:"+",color:dark_green},{text:"] ",color:gray},{text:"ᴀᴍ ",color:"#98fdb5"},{text:"| ",color:dark_gray},\
{storage:str,nbt:"out[0]",color:"#71DF92"},\
{storage:str,nbt:"out[1]",color:"#9AEEB2"},\
{storage:str,nbt:"out[2]",color:"#C2FCD2"}]

tellraw @a[tag=!legitermoose.is_playing] [{text:"[",color:gray,hover_event:{action:show_text,value:[{storage:"legitermoose:temp",nbt:playername},{text:" has mysteriously disappeared.",color:white}]}},{text:"→",color:aqua},{text:"] ",color:gray},{text:"ᴀᴍ ",color:"#98fdb5"},{text:"| ",color:dark_gray},\
{storage:str,nbt:"out[0]",color:"#71DF92"},\
{storage:str,nbt:"out[1]",color:"#9AEEB2"},\
{storage:str,nbt:"out[2]",color:"#C2FCD2"}]