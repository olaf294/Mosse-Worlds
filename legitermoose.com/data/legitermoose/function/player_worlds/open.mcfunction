execute unless score @s time_since_open matches 10.. run return run scoreboard players set @s time_since_open 0
scoreboard players set @s time_since_open 0

scoreboard players set @s ui 1

function legitermoose:ui/render_ui

execute if score @s page = @s id run return run inventory @s enderchest @s <reset>            Yᴏᴜʀ Wᴏʀʟᴅꜱ
inventory @s enderchest @s <reset>           Pʟᴀʏᴇʀ Wᴏʀʟᴅꜱ