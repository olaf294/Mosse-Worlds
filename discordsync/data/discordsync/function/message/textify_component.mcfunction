playerlist @a header clear

# get text and get it as string
data modify block 1000 49 4 LastOutput.extra[0].text set string block 1000 49 4 LastOutput.extra[0].text 42
data modify storage discordsync:data cm.content set from block 1000 49 4 LastOutput.extra[0]
data modify entity e-0-0-0-e CustomName set from block 1000 49 4 LastOutput
setblock 1000 50 5 test_block[mode=start] strict
setblock 1000 50 5 command_block{Command:"enchant e-0-0-0-e lure",auto:1b}
schedule function discordsync:message/textify_finish 2