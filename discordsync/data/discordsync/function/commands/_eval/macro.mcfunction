$data modify storage discordsync:data data.msg set value 'Ran command \\\\"`/$(command)`\\\\".'
$$(command)
function discordsync:message/send with storage discordsync:data data