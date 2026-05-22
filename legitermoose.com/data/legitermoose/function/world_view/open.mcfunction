execute unless score @s time_since_open matches 10.. run return run scoreboard players set @s time_since_open 0
scoreboard players set @s time_since_open 0

scoreboard players set @s ui 3

function legitermoose:ui/render_ui

inventory @s enderchest @s <reset>                Wᴏʀʟᴅ