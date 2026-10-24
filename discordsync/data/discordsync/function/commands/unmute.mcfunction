# Get Member ID
data modify storage discordsync:data data.mid set from storage discordsync:data cm.author.id

# Set up function
data modify storage discordsync:data data.function set value "discordsync:commands/_unmute/unmute"
function discordsync:util/server_roles/get with storage discordsync:data data