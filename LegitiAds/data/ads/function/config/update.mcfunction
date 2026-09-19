tellraw @s [{text:"LᴇɢɪᴛɪAᴅꜱ ",color:yellow},{text:"» ",color:dark_gray},{text:"Config has been updated.",color:green}]
execute at @s run playsound entity.player.levelup ui @s ~ ~ ~ 1 2

# Store Player Config into Scoreboards
$scoreboard players set .non_cd ads.config $(non_cd)
$scoreboard players set .am_cd ads.config $(am_cd)
$scoreboard players set .fm_cd ads.config $(fm_cd)
$scoreboard players set .fm2_cd ads.config $(fm2_cd)
$scoreboard players set .xm_cd ads.config $(xm_cd)

$scoreboard players set .wl_ads ads.config $(whitelist_ads)
$scoreboard players set .admin_ads ads.config $(admin_ads)
$scoreboard players set .dev_ads ads.config $(dev_ads)
$scoreboard players set .co_ads ads.config $(coowner_ads)
$scoreboard players set .owner_ads ads.config $(owner_ads)

$data modify storage legitiads:ads sound set value "$(sound)"