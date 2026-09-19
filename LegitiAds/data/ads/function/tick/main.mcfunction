# Run if admins
execute if entity @a[tag=is_admin] run function ads:tick/trigger
scoreboard players reset @a[tag=!is_admin] ads.config

# Ads
execute if score .ads_enabled ads.config matches 0 run return fail
scoreboard players remove @a[tag=!no_ads] ads 1

execute as @a[scores={ads.leave=1..}] run function ads:load_ad
execute as @a[scores={ads=..0},tag=!no_ads] run function ads:load_ad

return fail
# Legacy Ads
execute as @a if score .rank_difference ads.config matches 0 if score @s ads >= .non_cd ads.config run return run function ads:load_ad

execute as @a[tag=!is_am] if score @s ads >= .non_cd ads.config run function ads:load_ad
execute as @a[tag=is_am,tag=!is_fm] if score @s ads >= .am_cd ads.config run function ads:load_ad
execute as @a[tag=is_fm,tag=!is_fm2] if score @s ads >= .fm_cd ads.config run function ads:load_ad
execute as @a[tag=is_fm2,tag=!is_xm] if score @s ads >= .fm2_cd ads.config run function ads:load_ad
execute as @a[tag=is_xm] if score @s ads >= .xm_cd ads.config run function ads:load_ad