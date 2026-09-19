# TODO: 
execute if items entity @s container.* *[entity_data~{Pos:[]}] run tellraw @s {text:"Iᴛᴇᴍꜱ ᴡɪᴛʜ ᴘᴏꜱɪᴛɪᴏɴ ᴅᴀᴛᴀ ᴀʀᴇ ᴅɪꜱᴀʙʟᴇᴅ.",color:dark_red}
execute if items entity @s container.* *[entity_data~{Pos:[]}] run clear @s *[entity_data~{Pos:[]}]

execute if items entity @s weapon.offhand *[entity_data~{Pos:[]}] run tellraw @s {text:"Iᴛᴇᴍꜱ ᴡɪᴛʜ ᴘᴏꜱɪᴛɪᴏɴ ᴅᴀᴛᴀ ᴀʀᴇ ᴅɪꜱᴀʙʟᴇᴅ.",color:dark_red}
execute if items entity @s weapon.offhand *[entity_data~{Pos:[]}] run clear @s *[entity_data~{Pos:[]}]