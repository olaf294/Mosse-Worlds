tellraw @s {text:"",color:white,extra:[{text:"Set world name to \"",color:green},{storage:"legitermoose:temp",nbt:"edit_name.name",interpret:1b},{text:"\".",color:green}]}

$data modify storage legitermoose:worlds worlds[{world_id:$(id)}].name set from storage legitermoose:temp edit_name.name