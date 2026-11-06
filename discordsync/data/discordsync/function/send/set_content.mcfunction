function discordsync:send/clear_books

# set name and message
function discordsync:util/get_name
data modify storage discordsync:data temp.send.user set from storage discordsync:data temp.name
data modify storage discordsync:data temp.send.url set from storage discordsync:data data.webhook_url
$data modify storage discordsync:data temp.send.msg set value "$(raw)"

function discordsync:send/send_content with storage discordsync:data temp.send