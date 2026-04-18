execute if items entity @s player.cursor *[custom_data~{new_next_page:1b}] run function legitermoose:world_browser/new_maybe/open_page/forward
execute if items entity @s player.cursor *[custom_data~{new_previous_page:1b}] run function legitermoose:world_browser/new_maybe/open_page/backward
execute if items entity @s player.cursor *[custom_data~{new_last_page:1b}] run function legitermoose:world_browser/new_maybe/open_page/end
execute if items entity @s player.cursor *[custom_data~{new_first_page:1b}] run function legitermoose:world_browser/new_maybe/open_page {page:1}

item replace entity @s player.cursor with air