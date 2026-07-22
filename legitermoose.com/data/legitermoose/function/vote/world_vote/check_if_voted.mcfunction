# if you are not in storage of votes
$execute unless data storage legitermoose:votes votes[{id:$(id)}].uuids[{uuid:$(uuid)}] run return run function legitermoose:vote/world_vote/proceed_vote with storage legitermoose:temp check_voted

# TODO: add checking if your rank has changed


tellraw @s {text:"Yᴏᴜ ʜᴀᴠᴇ ᴀʟʀᴇᴀᴅʏ ᴠᴏᴛᴇᴅ ᴛʜɪꜱ ᴡᴏʀʟᴅ!",color:red}
execute at @s run playsound block.note_block.bass ui @s ~ ~ ~ 2 .5 1