# remove 1 from the score
scoreboard players remove .browser_items misc 1

# get first world
data modify storage a temp set from storage a a.response[0]
data modify storage a multi.item set from storage a temp.icon
data modify storage a multi.desc set from storage a temp.raw_description
data modify storage a multi.id set from storage a temp.world_uuid

function code:browser/fill_browser/set_item/multi with storage a multi

data remove storage a a.response[0]

execute if score .browser_items misc matches 0 run return run tellraw @a[tag=is_admin,tag=!ignore] {text:"Wᴏʀʟᴅꜱ ꜰɪʟʟᴇᴅ.",color:"#333388"}

execute store result storage a multi.slot int 1 run scoreboard players add .browser_slot misc 1
function code:browser/fill_browser/loop with storage a multi