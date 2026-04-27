tellraw @a[tag=is_admin] {text:"Cᴀʟʟɪɴɢ API (Lᴏɢʙᴏɢ Gᴇᴛ Wᴏʀʟᴅ)",color:"#0099ff"}

# Get UUID
$http store player_detect temp.a.world callback code:playerdetect/logbog/display_world send "https://api.legiti.dev/world/$(uuid)" GET