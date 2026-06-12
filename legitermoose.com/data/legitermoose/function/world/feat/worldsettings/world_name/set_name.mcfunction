tellraw @s {text:"",color:white,extra:[{text:"Sᴇᴛ ᴡᴏʀʟᴅ ɴᴀᴍᴇ ᴛᴏ \"",color:green},{storage:"legitermoose:temp",nbt:"edit_name.name",interpret:1b},{text:"\".",color:green}]}

$data modify storage legitermoose:worlds worlds[{world_id:$(id)}].name set from storage legitermoose:temp edit_name.name