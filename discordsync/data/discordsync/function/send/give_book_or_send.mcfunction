execute if items entity @s weapon.mainhand writable_book[custom_data={discordsync_send:1b}] run return run function discordsync:send/set_content with entity @s SelectedItem.components.minecraft:writable_book_content.pages[0]
execute if items entity @s weapon.mainhand written_book[custom_data={discordsync_send:1b}] run return run function discordsync:send/set_content with entity @s SelectedItem.components.minecraft:written_book_content.pages[0]

function discordsync:send/clear_books
give @s writable_book[custom_data={discordsync_send:1b}]

tellraw @s ["",{text:"👾 Dɪꜱᴄᴏʀᴅ",color:"#9999ff"},{text:"Sʏɴᴄ",color:"#7777ff"},{text:" » ",color:gray},{text:"Eɴᴛᴇʀ ᴀ ᴍᴇꜱꜱᴀɢᴇ ɪɴᴛᴏ ᴘᴀɢᴇ 1, ᴛʜᴇɴ ᴛʀɪɢɢᴇʀ ᴀɢᴀɪɴ ᴛᴏ ꜱᴇɴᴅ.",color:white}]