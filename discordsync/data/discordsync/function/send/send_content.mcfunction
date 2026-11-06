function discordsync:send/clear_books

# set name and message
function discordsync:util/get_name
data modify storage discordsync:data temp.send.user set from storage discordsync:data temp.name
$data modify storage discordsync:data temp.send.msg set value "$(raw)"

function discordsync:send/set_content with storage discordsync:data temp.send

# disallow mentions
data modify storage discordsync:data body.allowed_mentions set value {parse:[]}
function discordsync:message/send with storage discordsync:data data