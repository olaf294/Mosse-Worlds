$data modify storage legitermoose:world_browser item.components."minecraft:lore" set value [[{"text":"$(count)/8", color:green, italic:false}, {"text": " playing", color:gray, italic:false}], [{"text": "$(votes)", color:green, italic:false}, {text:" votes, ", color:gray, italic:false}, {text:"$(visits)", color:green, italic:false}, {text:" visits", color:gray, italic:false}]]
data modify storage legitermoose:world_browser item.components."minecraft:lore" prepend from storage legitermoose:world_browser world.description[3]
data modify storage legitermoose:world_browser item.components."minecraft:lore" prepend from storage legitermoose:world_browser world.description[2]
data modify storage legitermoose:world_browser item.components."minecraft:lore" prepend from storage legitermoose:world_browser world.description[1]
data modify storage legitermoose:world_browser item.components."minecraft:lore" prepend from storage legitermoose:world_browser world.description[0]
data modify storage legitermoose:world_browser world.by set value [{text:"by ", color:gray, italic: false, by:1b}]
data modify storage legitermoose:world_browser world.by append from storage legitermoose:world_browser world.formatted
data modify storage legitermoose:world_browser item.components."minecraft:lore" append from storage legitermoose:world_browser world.by