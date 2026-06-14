clear @s written_book
$tellraw @a[distance=..6] {text:"Wᴏʀʟᴅ $(uuid) ʀᴇǫᴜᴇꜱᴛᴇᴅ.",color:yellow}

$tellraw @a[tag=is_admin,tag=!ignore] {text:"Cᴀʟʟɪɴɢ API... (World Browser, Set World (World UUID: $(uuid))",color:"#333388"}

# Store data in HTTP
$http callback code:browser/populate store a a send "https://api.legiti.dev/world/$(uuid)"