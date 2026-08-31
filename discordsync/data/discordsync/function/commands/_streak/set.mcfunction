$execute if score $(player) ds.streak matches 2.. run data modify storage discordsync:data data.msg set value "$(player)\\'s current Mosse Worlds streak is $(streak) days."
$execute unless score $(player) ds.streak matches 2.. run data modify storage discordsync:data data.msg set value "$(player)\\'s current Mosse Worlds streak is 1 day."

function discordsync:message/send with storage discordsync:data data