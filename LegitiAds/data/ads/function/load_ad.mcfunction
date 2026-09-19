scoreboard players reset @s ads.leave

# Return if no ads
execute if entity @s[tag=is_whitelisted,tag=!is_admin] if score .wl_ads ads.config matches 0 run return 1
execute if entity @s[tag=is_admin,tag=!is_dev] if score .admin_ads ads.config matches 0 run return 1
execute if entity @s[tag=is_dev,tag=!is_coowner] if score .dev_ads ads.config matches 0 run return 1
execute if entity @s[tag=is_coowner,tag=!is_owner] if score .co_ads ads.config matches 0 run return 1
execute if entity @s[tag=is_owner] if score .owner_ads ads.config matches 0 run return 1

# Set Ads
scoreboard players operation @s[tag=!is_am] ads = .non_cd ads.config
scoreboard players operation @s[tag=is_am,tag=!is_fm] ads = .am_cd ads.config
scoreboard players operation @s[tag=is_fm,tag=!is_fm2] ads = .fm_cd ads.config
scoreboard players operation @s[tag=is_fm2,tag=!is_xm] ads = .fm2_cd ads.config
scoreboard players operation @s[tag=is_xm] ads = .xm_cd ads.config

# Global Ads (if RDif off)
execute if score .rank_difference ads.config matches 0 run scoreboard players operation @s ads = .non_cd ads.config

# Array Len
execute store result score .total_ads ads.config run data get storage legitiads:ads ads
execute store result storage legitiads:ads total_ads int 1 run scoreboard players remove .total_ads ads.config 1

# Ad Random
execute if score .random_ads ads.config matches 1 run return run function ads:_randomize_ad with storage legitiads:ads
execute if score .random_ads ads.config matches 0 run return run function ads:_sequenced_ad