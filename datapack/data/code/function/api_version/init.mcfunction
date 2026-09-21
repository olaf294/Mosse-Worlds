scoreboard players add .total requests 1
scoreboard players add .api_version requests 1

execute if data storage api {version:{status_code:200}} run tellraw @a[tag=is_admin,tag=!ignore] [{text:"(API) Rᴇꜱᴘᴏɴꜱᴇ: ",color:gray},{storage:api,nbt:"version.status_code",plain:1b,color:dark_green}]
execute unless data storage api {version:{status_code:200}} run tellraw @a[tag=is_admin,tag=!ignore] [{text:"(API) Rᴇꜱᴘᴏɴꜱᴇ: ",color:gray},{storage:api,nbt:"version.status_code",plain:1b,color:yellow}]

setblock 2 65 5 stone_button[powered=false,facing=north,face=wall]
execute positioned 2 65 5 run function code:api_version/display