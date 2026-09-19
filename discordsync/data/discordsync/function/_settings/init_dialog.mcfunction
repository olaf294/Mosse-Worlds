execute unless data storage discordsync:data data.token run data modify storage discordsync:data data.token set value ""
execute unless data storage discordsync:data data.gid run data modify storage discordsync:data data.gid set value ""
execute unless data storage discordsync:data data.id run data modify storage discordsync:data data.id set value ""
execute unless data storage discordsync:data data.prev_id run data modify storage discordsync:data data.prev_id set value ""
execute unless data storage discordsync:data data.bm run data modify storage discordsync:data data.bm set value ""

data modify storage discordsync:data data.end set value '$(token)\\",id:\\"$(id)\\",gid:\\"$(gid)\\",prev_id:\\"$(prev_id)\\",bm:\\"$(bm)\\",name_style:$(name_style)'
function discordsync:_settings/zzz/dialog with storage discordsync:data data