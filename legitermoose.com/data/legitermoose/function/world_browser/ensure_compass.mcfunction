execute store result score $tmp ui run clear @s *[custom_data~{world_browser:1b}] 0
execute unless score $tmp ui matches 0 run return 0

item replace entity @s hotbar.4 with compass[lore = [{italic: 0b, text: "Explore worlds made", color: "gray"}, {italic: 0b, text: "by other players.", color: "gray"}, {italic: 0b, text: "", color: "gray"},\
                        {italic: 0b, extra: [{color: "gold", text: "/play"}, " to open"], text: "Type ", color: "gray"}, {italic: 0b, text: "this menu anywhere.", color: "gray"}],\
                custom_name = {italic: 0b, extra: [{color: "gray", text: "(Right-Click)"}], text: "Quicker Play ", color: "green"},\
                custom_model_data = {strings: ["Legitermoose:navigator"]},\
                custom_data={world_browser:1b, ui:0b},\
                consumable={consume_seconds:2147483647}]
