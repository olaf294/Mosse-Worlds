execute if items entity @s contents *[custom_data~{world_browser:1b} | custom_data~{ui:1b} | custom_data~{custom_ui:1b} | entity_data~{Pos:[]} | damage_type] run kill @s
execute if items entity @s contents #legitermoose:forbidden_items run kill @s
execute positioned 1000 64 0 if items entity @s[distance=..300] contents #legitermoose:lobby_forbidden_items run kill @s