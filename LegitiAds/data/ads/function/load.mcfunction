scoreboard objectives add ads dummy
scoreboard objectives add ads.config trigger {text:"LᴇɢɪᴛɪAᴅꜱ Cᴏɴꜰɪɢ",color:"#ff6600"}
scoreboard objectives add ads.leave custom:leave_game

# If Ads on Load
execute if score .ads_on_load ads.config matches 1 run scoreboard players set @a ads 0

# Reset Uninstall Thingy
execute if score .uninstall ads.config matches 1.. run tellraw @a[tag=is_admin] [{text:"LᴇɢɪᴛɪAᴅꜱ ",color:yellow},{text:"» ",color:dark_gray},{text:"Uninstall has been cancelled.",color:yellow}]
scoreboard players set .uninstall ads.config 0

# Defaults
execute unless score .ads_enabled ads.config matches -2147483648..2147483647 run tellraw @a[tag=is_admin] [{text:"LᴇɢɪᴛɪAᴅꜱ ",color:yellow},{text:"» ",color:dark_gray},{text:"Config default of ",color:yellow},{text:"Ads ",color:gray},{text:"set to ",color:yellow},{text:"ᴏꜰꜰ",color:red}]
execute unless score .ads_enabled ads.config matches -2147483648..2147483647 run scoreboard players set .ads_enabled ads.config 0

execute unless score .rank_difference ads.config matches -2147483648..2147483647 run tellraw @a[tag=is_admin] [{text:"LᴇɢɪᴛɪAᴅꜱ ",color:yellow},{text:"» ",color:dark_gray},{text:"Config default of ",color:yellow},{text:"Rank Advantage ",color:gray},{text:"set to ",color:yellow},{text:"ᴏꜰꜰ",color:red}]
execute unless score .rank_difference ads.config matches -2147483648..2147483647 run scoreboard players set .rank_difference ads.config 0

execute unless score .ad_sound ads.config matches -2147483648..2147483647 run tellraw @a[tag=is_admin] [{text:"LᴇɢɪᴛɪAᴅꜱ ",color:yellow},{text:"» ",color:dark_gray},{text:"Config default of ",color:yellow},{text:"Ad Sound ",color:gray},{text:"set to ",color:yellow},{text:"ᴏꜰꜰ",color:red}]
execute unless score .ad_sound ads.config matches -2147483648..2147483647 run scoreboard players set .ad_sound ads.config 0

execute unless score .ads_on_load ads.config matches -2147483648..2147483647 run tellraw @a[tag=is_admin] [{text:"LᴇɢɪᴛɪAᴅꜱ ",color:yellow},{text:"» ",color:dark_gray},{text:"Config default of ",color:yellow},{text:"Ads on /reload ",color:gray},{text:"set to ",color:yellow},{text:"ᴏꜰꜰ",color:red}]
execute unless score .ads_on_load ads.config matches -2147483648..2147483647 run scoreboard players set .ads_on_load ads.config 0

execute unless score .random_ads ads.config matches -2147483648..2147483647 run tellraw @a[tag=is_admin] [{text:"LᴇɢɪᴛɪAᴅꜱ ",color:yellow},{text:"» ",color:dark_gray},{text:"Config default of ",color:yellow},{text:"Ad Order ",color:gray},{text:"set to ",color:yellow},{text:"ʀᴀɴᴅᴏᴍ",color:aqua}]
execute unless score .random_ads ads.config matches -2147483648..2147483647 run scoreboard players set .random_ads ads.config 1

execute unless score .ads_on_join ads.config matches -2147483648..2147483647 run tellraw @a[tag=is_admin] [{text:"LᴇɢɪᴛɪAᴅꜱ ",color:yellow},{text:"» ",color:dark_gray},{text:"Config default of ",color:yellow},{text:"Ads on Join ",color:gray},{text:"set to ",color:yellow},{text:"ᴏꜰꜰ",color:red}]
execute unless score .ads_on_join ads.config matches -2147483648..2147483647 run scoreboard players set .ads_on_join ads.config 0


execute unless data storage legitiads:ads sound run tellraw @a[tag=is_admin] [{text:"LᴇɢɪᴛɪAᴅꜱ ",color:yellow},{text:"» ",color:dark_gray},{text:"Config default of ",color:yellow},{text:"Ad Sound ",color:gray},{text:'set to "',color:yellow},{text:"block.note_block.pling",color:green},{text:'"',color:yellow}]
execute unless data storage legitiads:ads sound run data modify storage legitiads:ads sound set value "block.note_block.pling"


execute unless score .non_cd ads.config matches -2147483648..2147483647 run tellraw @a[tag=is_admin] [{text:"LᴇɢɪᴛɪAᴅꜱ ",color:yellow},{text:"» ",color:dark_gray},{text:"Config default of ",color:yellow},{text:"Default",color:gray},{text:" Cooldown ",color:gray},{text:"set to ",color:yellow},{text:"1200",color:aqua}]
execute unless score .non_cd ads.config matches -2147483648..2147483647 run scoreboard players set .non_cd ads.config 1200

execute unless score .am_cd ads.config matches -2147483648..2147483647 run tellraw @a[tag=is_admin] [{text:"LᴇɢɪᴛɪAᴅꜱ ",color:yellow},{text:"» ",color:dark_gray},{text:"Config default of ",color:yellow},{text:"ᴀᴍ",color:"#98fdb5"},{text:" Cooldown ",color:gray},{text:"set to ",color:yellow},{text:"2400",color:aqua}]
execute unless score .am_cd ads.config matches -2147483648..2147483647 run scoreboard players set .am_cd ads.config 2400

execute unless score .fm_cd ads.config matches -2147483648..2147483647 run tellraw @a[tag=is_admin] [{text:"LᴇɢɪᴛɪAᴅꜱ ",color:yellow},{text:"» ",color:dark_gray},{text:"Config default of ",color:yellow},{text:"ꜰᴍ",color:"#8888ff"},{text:" Cooldown ",color:gray},{text:"set to ",color:yellow},{text:"6000",color:aqua}]
execute unless score .fm_cd ads.config matches -2147483648..2147483647 run scoreboard players set .fm_cd ads.config 6000

execute unless score .fm2_cd ads.config matches -2147483648..2147483647 run tellraw @a[tag=is_admin] [{text:"LᴇɢɪᴛɪAᴅꜱ ",color:yellow},{text:"» ",color:dark_gray},{text:"Config default of ",color:yellow},{text:"ꜰᴍ",color:"#8888ff"},{text:"²",color:"#ba094a"},{text:" Cooldown ",color:gray},{text:"set to ",color:yellow},{text:"12000",color:aqua}]
execute unless score .fm2_cd ads.config matches -2147483648..2147483647 run scoreboard players set .fm2_cd ads.config 12000

execute unless score .xm_cd ads.config matches -2147483648..2147483647 run tellraw @a[tag=is_admin] [{text:"LᴇɢɪᴛɪAᴅꜱ ",color:yellow},{text:"» ",color:dark_gray},{text:"Config default of ",color:yellow},{text:"xᴍ",color:"#ff33ff"},{text:" Cooldown ",color:gray},{text:"set to ",color:yellow},{text:"18000",color:aqua}]
execute unless score .xm_cd ads.config matches -2147483648..2147483647 run scoreboard players set .xm_cd ads.config 18000


execute unless score .wl_ads ads.config matches -2147483648..2147483647 run tellraw @a[tag=is_admin] [{text:"LᴇɢɪᴛɪAᴅꜱ ",color:yellow},{text:"» ",color:dark_gray},{text:"Config default of ",color:yellow},{text:"Whitelisted Player Ads ",color:gray},{text:"set to ",color:yellow},{text:"ᴏɴ",color:green}]
execute unless score .wl_ads ads.config matches -2147483648..2147483647 run scoreboard players set .wl_ads ads.config 1

execute unless score .admin_ads ads.config matches -2147483648..2147483647 run tellraw @a[tag=is_admin] [{text:"LᴇɢɪᴛɪAᴅꜱ ",color:yellow},{text:"» ",color:dark_gray},{text:"Config default of ",color:yellow},{text:"Admin Ads ",color:gray},{text:"set to ",color:yellow},{text:"ᴏɴ",color:green}]
execute unless score .admin_ads ads.config matches -2147483648..2147483647 run scoreboard players set .admin_ads ads.config 1

execute unless score .dev_ads ads.config matches -2147483648..2147483647 run tellraw @a[tag=is_admin] [{text:"LᴇɢɪᴛɪAᴅꜱ ",color:yellow},{text:"» ",color:dark_gray},{text:"Config default of ",color:yellow},{text:"Dev Ads ",color:gray},{text:"set to ",color:yellow},{text:"ᴏɴ",color:green}]
execute unless score .dev_ads ads.config matches -2147483648..2147483647 run scoreboard players set .dev_ads ads.config 1

execute unless score .co_ads ads.config matches -2147483648..2147483647 run tellraw @a[tag=is_admin] [{text:"LᴇɢɪᴛɪAᴅꜱ ",color:yellow},{text:"» ",color:dark_gray},{text:"Config default of ",color:yellow},{text:"Coowner Ads ",color:gray},{text:"set to ",color:yellow},{text:"ᴏꜰꜰ",color:red}]
execute unless score .co_ads ads.config matches -2147483648..2147483647 run scoreboard players set .co_ads ads.config 0

execute unless score .owner_ads ads.config matches -2147483648..2147483647 run tellraw @a[tag=is_admin] [{text:"LᴇɢɪᴛɪAᴅꜱ ",color:yellow},{text:"» ",color:dark_gray},{text:"Config default of ",color:yellow},{text:"Owner Ads ",color:gray},{text:"set to ",color:yellow},{text:"ᴏꜰꜰ",color:red}]
execute unless score .owner_ads ads.config matches -2147483648..2147483647 run scoreboard players set .owner_ads ads.config 0