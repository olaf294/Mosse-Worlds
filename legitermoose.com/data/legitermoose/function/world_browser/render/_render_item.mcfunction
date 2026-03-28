$item replace block 999 54 8 container.0 with $(icon)[profile="$(owner)", custom_name=$(name), lore=$(description), custom_data={custom_ui:1b, world:1b, world_id:$(world_id)}, tooltip_display={hidden_components:["profile"]}]

data modify block 999 54 8 Items[{Slot:0b}].components."minecraft:lore" append value ""
$data modify block 999 54 8 Items[{Slot:0b}].components."minecraft:lore" append value [{"text":"$(online)/8", color:green, italic:false}, {"text": " playing", color:gray, italic:false}]
$data modify block 999 54 8 Items[{Slot:0b}].components."minecraft:lore" append value [{"text": "$(votes)", color:green, italic:false}, {text:" votes, ", color:gray, italic:false}, {text:"$(visits)", color:green, italic:false}, {text:" visits", color:gray, italic:false}]
$data modify block 999 54 8 Items[{Slot:0b}].components."minecraft:lore" append value [{text:"by ", color:gray, italic: false}, $(formatted)]

$item replace entity @s enderchest.$(offset) from block 999 54 8 container.0