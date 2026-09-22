tellraw @a[distance=..8] {text:"Tᴏᴘ ᴡᴏʀʟᴅꜱ ʀᴇǫᴜᴇꜱᴛᴇᴅ.",color:yellow}

tellraw @a[tag=is_admin,tag=!ignore] {text:"Cᴀʟʟɪɴɢ API... (World Browser, Top Worlds)",color:"#333388"}

# Store data in HTTP
http callback code:browser/populate store a a send 'https://api.legiti.dev/v4/worlds/?offset=1&limit=6&sort_by=votes&project=!creation_date,!creation_date_unix_seconds,!deleted,!description,!last_scraped,!last_scraped_ms,!max_datapack_size,!owner_uuid'