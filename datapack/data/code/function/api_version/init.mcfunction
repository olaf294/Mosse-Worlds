scoreboard players add .total requests 1
scoreboard players add .api_version requests 1


execute if data storage api {version:{status_code:200}} run tellraw @a[tag=is_admin,tag=!ignore] [{text:"(API) Rᴇꜱᴘᴏɴꜱᴇ: ",color:gray},{storage:api,nbt:"version.status_code",color:dark_green}]
execute unless data storage api {version:{status_code:200}} run tellraw @a[tag=is_admin,tag=!ignore] [{text:"(API) Rᴇꜱᴘᴏɴꜱᴇ: ",color:gray},{storage:api,nbt:"version.status_code",color:yellow}]

setblock 2 65 5 stone_button[powered=false,facing=north,face=wall]
function code:api_version/display