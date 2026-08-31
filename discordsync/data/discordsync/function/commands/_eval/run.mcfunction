data modify storage discordsync:data cm.command set string storage discordsync:data cm.content 6
data modify storage discordsync:data temp.command set from storage discordsync:data cm.command
function discordsync:commands/_eval/macro with storage discordsync:data temp
function discordsync:message/send with storage discordsync:data data