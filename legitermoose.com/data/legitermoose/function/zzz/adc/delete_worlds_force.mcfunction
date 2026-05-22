execute unless entity @s[tag=is_coowner] run return run tellraw @s {text:"Only Co-Owners and higher can run this function.",color:gray}
tellraw @a[tag=is_admin] [{text:"Dᴇʟᴇᴛɪɴɢ Wᴏʀʟᴅꜱ.",color:yellow},{text:" (FORCE!)",color:dark_red}]

scoreboard players set .global_id legitermoose.misc 0

data remove storage legitermoose:worlds worlds
data remove storage legitermoose:ranks worlds

tellraw @a[tag=is_admin] {text:"Wᴏʀʟᴅꜱ ᴅᴇʟᴇᴛᴇᴅ!",color:green}