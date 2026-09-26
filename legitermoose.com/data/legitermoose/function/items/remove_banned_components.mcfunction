## Entity Data
execute if items entity @s [{type:"slot_range",slots:"container.*"},{type:"slot_range",slots:"weapon.offhand"}] *[entity_data~{Pos:[]}] run tellraw @s {text:"Tʜɪꜱ ɪᴛᴇᴍ ᴄᴀɴɴᴏᴛ ʙᴇ ᴜꜱᴇᴅ.",color:dark_red}
execute if items entity @s [{type:"slot_range",slots:"container.*"},{type:"slot_range",slots:"weapon.offhand"}] *[entity_data~{Pos:[]}] run clear @s *[entity_data~{Pos:[]}]

## Damage Types
execute if items entity @s [{type:"slot_range",slots:"container.*"},{type:"slot_range",slots:"weapon.offhand"}] *[damage_type] run tellraw @s {text:"Tʜɪꜱ ɪᴛᴇᴍ ᴄᴀɴɴᴏᴛ ʙᴇ ᴜꜱᴇᴅ.",color:dark_red}
execute if items entity @s [{type:"slot_range",slots:"container.*"},{type:"slot_range",slots:"weapon.offhand"}] *[damage_type] run clear @s *[damage_type]

## Generic clears
execute if items entity @s [{type:"slot_range",slots:"container.*"},{type:"slot_range",slots:"weapon.offhand"}] #legitermoose:forbidden_items run clear @s #legitermoose:forbidden_items
execute if items entity @s[scores={worldid=0}] [{type:"slot_range",slots:"container.*"},{type:"slot_range",slots:"weapon.offhand"}] #legitermoose:lobby_forbidden_items run clear @s #legitermoose:lobby_forbidden_items