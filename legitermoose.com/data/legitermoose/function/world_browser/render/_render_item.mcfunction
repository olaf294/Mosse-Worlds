$item replace block 999 54 8 container.0 with $(icon)[profile="$(owner)", lore=$(description), custom_data={custom_ui:1b, world:1b, world_id:$(world_id)}, tooltip_display={hidden_components:["profile"]}]

item modify block 999 54 8 container.0 legitermoose:render_item

$item replace entity @s enderchest.$(offset) from block 999 54 8 container.0