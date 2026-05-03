tellraw @a[tag=is_admin,tag=!ignore] {text:"Cᴀʟʟɪɴɢ API (KᴏᴏʀɪKɪᴛꜱᴜɴᴇ38 Gᴇᴛ Wᴏʀʟᴅ)",color:"#0099ff"}

# Get UUID
$http store player_detect temp.a.world callback code:playerdetect/koori/display_world send "https://api.legiti.dev/world/$(uuid)" GET