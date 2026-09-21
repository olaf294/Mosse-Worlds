## Entity Data
execute if items entity @s [{type:"slot_range",slots:"container.*"},{type:"slot_range",slots:"weapon.offhand"}] *[entity_data~{Pos:[]}] run tellraw @s {text:"Tʜɪꜱ ɪᴛᴇᴍ ᴄᴀɴɴᴏᴛ ʙᴇ ᴜꜱᴇᴅ.",color:dark_red}
execute if items entity @s [{type:"slot_range",slots:"container.*"},{type:"slot_range",slots:"weapon.offhand"}] *[entity_data~{Pos:[]}] run clear @s *[entity_data~{Pos:[]}]


## Damage Types
execute if items entity @s [{type:"slot_range",slots:"container.*"},{type:"slot_range",slots:"weapon.offhand"}] *[damage_type] run tellraw @s {text:"Tʜɪꜱ ɪᴛᴇᴍ ᴄᴀɴɴᴏᴛ ʙᴇ ᴜꜱᴇᴅ.",color:dark_red}
execute if items entity @s [{type:"slot_range",slots:"container.*"},{type:"slot_range",slots:"weapon.offhand"}] *[damage_type] run clear @s *[damage_type]