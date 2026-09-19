# Store ad formatting in temp
$data modify storage legitiads:ads ad set from storage legitiads:ads ads[$(loaded_ad)]

# Display Ad
tellraw @s {storage:"legitiads:ads",nbt:ad,interpret:1b}
tellraw @a[tag=legitiads.debugview] ["",{text:"LᴇɢɪᴛɪAᴅꜱ ᴅᴇʙᴜɢ ",color:yellow},{text:"» ",color:dark_gray},{text:"Showed Ad to ",color:yellow},{selector:"@s"},{text:"\nAd: ",color:yellow},{text:"\"",color:gray},{storage:"legitiads:ads",nbt:ad,interpret:1b},{text:"\"",color:gray}]
execute if score .ad_sound ads.config matches 1 at @s run function ads:_play_sound with storage legitiads:ads