$data modify storage discordsync:data body.content set value "**There is 1 user muted:** $(id)"
function discordsync:message/send with storage discordsync:data data