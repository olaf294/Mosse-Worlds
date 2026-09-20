# TODO: use slot sources

## Entity Data
execute if items entity @s container.* *[entity_data~{Pos:[]}] run tellraw @s {text:"Tʜɪꜱ ɪᴛᴇᴍ ᴄᴀɴɴᴏᴛ ʙᴇ ᴜꜱᴇᴅ.",color:dark_red}
execute if items entity @s container.* *[entity_data~{Pos:[]}] run clear @s *[entity_data~{Pos:[]}]

execute if items entity @s weapon.offhand *[entity_data~{Pos:[]}] run tellraw @s {text:"Tʜɪꜱ ɪᴛᴇᴍ ᴄᴀɴɴᴏᴛ ʙᴇ ᴜꜱᴇᴅ.",color:dark_red}
execute if items entity @s weapon.offhand *[entity_data~{Pos:[]}] run clear @s *[entity_data~{Pos:[]}]


## Damage Types
execute if items entity @s container.* *[damage_type] run tellraw @s {text:"Tʜɪꜱ ɪᴛᴇᴍ ᴄᴀɴɴᴏᴛ ʙᴇ ᴜꜱᴇᴅ.",color:dark_red}
execute if items entity @s container.* *[damage_type] run clear @s *[damage_type]

execute if items entity @s weapon.offhand *[damage_type] run tellraw @s {text:"Tʜɪꜱ ɪᴛᴇᴍ ᴄᴀɴɴᴏᴛ ʙᴇ ᴜꜱᴇᴅ.",color:dark_red}
execute if items entity @s weapon.offhand *[damage_type] run clear @s *[damage_type]