execute store result storage discordsync:data temp.count int 1 if entity @a

data remove storage discordsync:data temp.list
execute as @a run function discordsync:commands/_list/add
function discordsync:commands/_list/merge

function discordsync:message/send with storage discordsync:data data