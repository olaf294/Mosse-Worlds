# Return if already owning a world 
$execute if data storage legitermoose:worlds {worlds:[{uuid:$(UUID)}]} as @s run return run function legitermoose:world/get_own_world with entity @s

tellraw @s {text:"Creating a new world.",color:green}

# Set up storage
data remove storage legitermoose:temp temp
data merge storage legitermoose:temp \
{temp:{raw_rank:[],owner:"unknown",rank:"unknown",uuid:[],world_id:0,created_at:0,votes:0,visits:0,name:[{text:"Player",color:white,italic:0b},{text:"'s world",color:white,italic:0b}],description:[{text:"This is the default description",color:gray,italic:0b},{text:"for worlds on legitermoose.com",color:gray,italic:0b}],settings:{whitelist:0b},custom_data:{ui:1b,"legitermoose.data":{plot_position:{x:0,y:64,z:0}}}}}

# Increment World ID by 1
scoreboard players add .global_id legitermoose.misc 1

# Get player data
function legitermoose:util/get_name
data modify storage legitermoose:temp temp.owner set from storage legitermoose:temp playername
data modify storage legitermoose:temp temp.uuid set from entity @s UUID
data modify storage legitermoose:temp temp.created_at set from entity @s bukkit.lastPlayed
#execute store result storage legitermoose:temp temp.created_at long 1000 run scoreboard players get .time time
data modify storage legitermoose:temp temp.name[0].text set from storage legitermoose:temp playername
execute store result storage legitermoose:temp temp.world_id int 1 run scoreboard players get .global_id legitermoose.misc
execute store result storage legitermoose:temp temp.owner_id int 1 run scoreboard players get @s id

# Set default spawn location
execute store result storage legitermoose:temp pos.x int 10000 run scoreboard players get .global_id legitermoose.misc
data modify storage legitermoose:temp temp.custom_data."legitermoose.data".plot_position.x set from storage legitermoose:temp pos.x

# Update Ranks Storage to contain Owner UUID
data modify storage legitermoose:ranks worlds append value {id:0,uuids:[]}
data modify storage legitermoose:ranks worlds[-1].id set from storage legitermoose:temp temp.world_id
data modify storage legitermoose:ranks worlds[-1].uuids set value [{id:[],rank:10}]
data modify storage legitermoose:ranks worlds[-1].uuids[0].id set from entity @s UUID
 
# Update Gamemode Storage to contain Owner UUID
data modify storage legitermoose:gm worlds append value {id:0,uuids:[],default:0}
data modify storage legitermoose:gm worlds[-1].id set from storage legitermoose:temp temp.world_id
data modify storage legitermoose:gm worlds[-1].uuids set value [{id:[],gamemode:2}]
data modify storage legitermoose:gm worlds[-1].uuids[0].id set from entity @s UUID

# Set Rank
execute if entity @s[tag=!is_am] run data modify storage legitermoose:temp temp.rank set value "non"
execute if entity @s[tag=!is_am] run data modify storage legitermoose:temp temp.raw_rank set value []

execute if entity @s[tag=is_am,tag=!is_fm] run data modify storage legitermoose:temp temp.rank set value "am"
execute if entity @s[tag=is_am,tag=!is_fm] run data modify storage legitermoose:temp temp.raw_rank set value [{text:"ᴀᴍ ",color:"#98fdb5"},{text:"| ",color:dark_gray}]

execute if entity @s[tag=is_fm,tag=!is_fm2] run data modify storage legitermoose:temp temp.rank set value "fm"
execute if entity @s[tag=is_fm,tag=!is_fm2] run data modify storage legitermoose:temp temp.raw_rank set value [{text:"ꜰᴍ ",color:"#8888ff"},{text:"| ",color:dark_gray}]

execute if entity @s[tag=is_fm2,tag=!is_xm] run data modify storage legitermoose:temp temp.rank set value "fm2"
execute if entity @s[tag=is_fm2,tag=!is_xm] run data modify storage legitermoose:temp temp.raw_rank set value [{text:"ꜰᴍ",color:"#8888ff"},{text:"² ",color:"#ba094a"},{text:"| ",color:dark_gray}]

execute if entity @s[tag=is_xm] run data modify storage legitermoose:temp temp.rank set value "xm"
execute if entity @s[tag=is_xm] run data modify storage legitermoose:temp temp.raw_rank set value [{text:"xᴍ",color:"#ff33ff"},{text:"| ",color:dark_gray}]

# Special Ranks
execute if entity @s[name=Legitermoose] run data modify storage legitermoose:temp temp.rank set value "moose"
execute if entity @s[name=PolishKrowa] run data modify storage legitermoose:temp temp.rank set value "admin"
execute if entity @s[name=Arvelyx] run data modify storage legitermoose:temp temp.rank set value "admin"
execute if entity @s[name=mmmmmaaaaaxxxxx] run data modify storage legitermoose:temp temp.rank set value "mod"
execute if entity @s[name=KooriKitsune38] run data modify storage legitermoose:temp temp.rank set value "mod"
execute if entity @s[name=NobleSkye] run data modify storage legitermoose:temp temp.rank set value "mmo"


# Set Icon
data modify storage legitermoose:temp temp.icon set value "player_head"

data modify storage legitermoose:worlds worlds append from storage legitermoose:temp temp

execute at @s run playsound entity.player.levelup ui @s ~ ~ ~ 1 2

tellraw @s {text:"Wᴏʀʟᴅ ꜱᴜᴄᴄᴇꜱꜱꜰᴜʟʟʏ ᴄʀᴇᴀᴛᴇᴅ!",color:green}
tellraw @s [{text:"Wᴏʀʟᴅ ID ᴀꜱꜱɪɢɴᴇᴅ: ",color:yellow},{score:{name:".global_id",objective:legitermoose.misc},color:gold}]
tellraw @s [{text:"Yᴏᴜʀ Pʟᴀʏᴇʀ ID: ",color:yellow},{score:{name:"@s",objective:id},color:gold}]
tellraw @s [{text:"TIP: ",color:green},{text:"Cʟɪᴄᴋ 'ᴄʀᴇᴀᴛᴇ' ᴀɢᴀɪɴ ᴛᴏ ᴊᴏɪɴ ʏᴏᴜʀ ɴᴇᴡ ᴡᴏʀʟᴅ!",color:yellow}]

function legitermoose:world_browser/sort/visits/start
function legitermoose:world_browser/sort/votes/start
function legitermoose:world_browser/sort/players/start