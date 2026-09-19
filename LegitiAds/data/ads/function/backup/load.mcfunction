function ads:zzz/_delete_all_data

data modify storage legitiads:ads ads set from storage legitiads:backup ads

execute store result score .non_cd ads.config run data get storage legitiads:backup settings.non_cd
execute store result score .am_cd ads.config run data get storage legitiads:backup settings.am_cd
execute store result score .fm_cd ads.config run data get storage legitiads:backup settings.fm_cd
execute store result score .fm2_cd ads.config run data get storage legitiads:backup settings.fm2_cd
execute store result score .xm_cd ads.config run data get storage legitiads:backup settings.xm_cd
data modify storage legitiads:ads sound set from storage legitiads:backup settings.sound

execute store result score .wl_ads ads.config run data get storage legitiads:backup settings.wl_ads
execute store result score .admin_ads ads.config run data get storage legitiads:backup settings.admin_ads
execute store result score .dev_ads ads.config run data get storage legitiads:backup settings.dev_ads
execute store result score .co_ads ads.config run data get storage legitiads:backup settings.co_ads
execute store result score .owner_ads ads.config run data get storage legitiads:backup settings.owner_ads

execute store result score .ads_enabled ads.config run data get storage legitiads:backup settings.ads_enabled
execute store result score .ads_on_load ads.config run data get storage legitiads:backup settings.ads_on_load
execute store result score .random_ads ads.config run data get storage legitiads:backup settings.random_ads
execute store result score .ad_sound ads.config run data get storage legitiads:backup settings.ad_sound
execute store result score .rank_difference ads.config run data get storage legitiads:backup settings.rank_difference

tellraw @a[tag=is_admin] [{text:"LᴇɢɪᴛɪAᴅꜱ ",color:yellow},{text:"» ",color:dark_gray},{text:"Bᴀᴄᴋᴜᴘ ꜱᴜᴄᴄᴇꜱꜱꜰᴜʟʟʏ ʀᴇꜱᴛᴏʀᴇᴅ! ",color:yellow}]