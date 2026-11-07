setblock 1000 49 4 test_block[mode=start]
$setblock 1000 49 4 command_block{Command:"playerlist @a[limit=1] header set 0$(content)",auto:1b}
    # unfinished - parse_mm only remove tags
    #execute if data storage discordsync:data {data:{parse_mm:1}} run return run schedule function discordsync:message/textify_component 2
schedule function discordsync:message/get_unminimessaged_minimessage 2