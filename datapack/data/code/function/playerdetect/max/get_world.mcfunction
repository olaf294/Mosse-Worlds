tellraw @a[tag=is_admin,tag=!ignore] {text:"Cᴀʟʟɪɴɢ API (ᴍᴍᴍᴍᴍᴀᴀᴀᴀᴀxxxxx Gᴇᴛ Wᴏʀʟᴅ)",color:"#0099ff"}

# Get UUID
$http store player_detect temp.a.world callback code:playerdetect/max/display_world send "https://api.legiti.dev/world/$(uuid)" GET