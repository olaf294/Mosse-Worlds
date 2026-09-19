scoreboard players reset @s ads.config

execute store result storage legitiads:temp non_cd int 1 run scoreboard players get .non_cd ads.config
execute store result storage legitiads:temp am_cd int 1 run scoreboard players get .am_cd ads.config
execute store result storage legitiads:temp fm_cd int 1 run scoreboard players get .fm_cd ads.config
execute store result storage legitiads:temp fm2_cd int 1 run scoreboard players get .fm2_cd ads.config
execute store result storage legitiads:temp xm_cd int 1 run scoreboard players get .xm_cd ads.config

execute store result storage legitiads:temp wl_ads int 1 run scoreboard players get .wl_ads ads.config
execute store result storage legitiads:temp admin_ads int 1 run scoreboard players get .admin_ads ads.config
execute store result storage legitiads:temp dev_ads int 1 run scoreboard players get .dev_ads ads.config
execute store result storage legitiads:temp co_ads int 1 run scoreboard players get .co_ads ads.config
execute store result storage legitiads:temp owner_ads int 1 run scoreboard players get .owner_ads ads.config

data modify storage legitiads:temp sound set from storage legitiads:ads sound

data modify storage legitiads:temp end set value "$(non_cd),am_cd:$(am_cd),fm_cd:$(fm_cd),fm2_cd:$(fm2_cd),xm_cd:$(xm_cd),whitelist_ads:$(whitelist_ads),admin_ads:$(admin_ads),dev_ads:$(dev_ads),coowner_ads:$(coowner_ads),owner_ads:$(owner_ads),sound:\\\"$(sound)\\\"}\"}}]}"

function ads:config/dialog/show with storage legitiads:temp