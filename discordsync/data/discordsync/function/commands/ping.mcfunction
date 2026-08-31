data modify storage discordsync:data data.msg set value "Pong! Latency: *unknown*"
function discordsync:commands/_ping/calculate
$data modify storage discordsync:data data.extra set value ",\"message_reference\":{\"message_id\":\"$(prev_id)\",\"fail_if_not_exists\":false}"
function discordsync:message/send with storage discordsync:data data