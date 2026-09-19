data modify storage legitiads:backup ads set from storage legitiads:ads ads

execute store result storage legitiads:backup settings.non_cd int 1 run scoreboard players get .non_cd ads.config
execute store result storage legitiads:backup settings.am_cd int 1 run scoreboard players get .am_cd ads.config
execute store result storage legitiads:backup settings.fm_cd int 1 run scoreboard players get .fm_cd ads.config
execute store result storage legitiads:backup settings.fm2_cd int 1 run scoreboard players get .fm2_cd ads.config
execute store result storage legitiads:backup settings.xm_cd int 1 run scoreboard players get .xm_cd ads.config
data modify storage legitiads:backup settings.sound set from storage legitiads:ads sound

execute store result storage legitiads:backup settings.wl_ads int 1 run scoreboard players get .wl_ads ads.config
execute store result storage legitiads:backup settings.admin_ads int 1 run scoreboard players get .admin_ads ads.config
execute store result storage legitiads:backup settings.dev_ads int 1 run scoreboard players get .dev_ads ads.config
execute store result storage legitiads:backup settings.co_ads int 1 run scoreboard players get .co_ads ads.config
execute store result storage legitiads:backup settings.owner_ads int 1 run scoreboard players get .owner_ads ads.config

execute store result storage legitiads:backup settings.ads_enabled int 1 run scoreboard players get .ads_enabled ads.config
execute store result storage legitiads:backup settings.ads_on_load int 1 run scoreboard players get .ads_on_load ads.config
execute store result storage legitiads:backup settings.random_ads int 1 run scoreboard players get .random_ads ads.config
execute store result storage legitiads:backup settings.ad_sound int 1 run scoreboard players get .ad_sound ads.config
execute store result storage legitiads:backup settings.rank_difference int 1 run scoreboard players get .rank_difference ads.config

function ads:zzz/_delete_all_data

tellraw @a[tag=is_admin] [{text:"LᴇɢɪᴛɪAᴅꜱ ",color:yellow},{text:"» ",color:dark_gray},{text:"Bᴀᴄᴋᴜᴘ ꜱᴜᴄᴄᴇꜱꜱꜰᴜʟʟʏ ꜱᴀᴠᴇᴅ! ",color:yellow}]