setblock 1000 49 4 test_block[mode=start]
$setblock 1000 49 4 command_block{Command:"playerlist @a[limit=1] header set 0$(content)",auto:1b}
schedule function discordsync:message/get_unminimessaged_minimessage 3