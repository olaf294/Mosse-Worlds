tellraw @a[distance=..8] {text:"Tᴏᴘ ᴡᴏʀʟᴅꜱ ʀᴇǫᴜᴇꜱᴛᴇᴅ.",color:yellow}

tellraw @a[tag=is_admin,tag=!ignore] {text:"Cᴀʟʟɪɴɢ API... (World Browser, Top Worlds)",color:"#333388"}

# Store data in HTTP
http callback code:browser/populate store a a send "https://api.legiti.dev/top/5"