function discordsync:util/get_name

data modify storage discordsync:data playerlist prepend value {name:"null"}
data modify storage discordsync:data playerlist[0].name set from storage discordsync:data temp.name