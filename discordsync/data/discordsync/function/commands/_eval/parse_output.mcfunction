# this runs after the enchant trick evaluates

# get output from the second command block
data modify storage discordsync:data temp.concat.b set from block 1000 50 5 LastOutput.extra[0].extra[0].with[0]
execute unless data block 1000 50 6 LastOutput run data modify storage discordsync:data temp.concat.b set value "No output avaiable."

function discordsync:commands/_eval/concat with storage discordsync:data temp.concat

function discordsync:message/send with storage discordsync:data data