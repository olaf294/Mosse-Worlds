execute unless data block 1000 49 4 LastOutput.extra[0].text run data modify block 1000 49 4 LastOutput.extra[0] set string block 1000 49 4 LastOutput.extra[0] 42
data modify block 1000 49 4 LastOutput.extra[0].text set string block 1000 49 4 LastOutput.extra[0].text 42
data modify storage discordsync:data cm.content set from block 1000 49 4 LastOutput.extra[0]
playerlist @a header clear
function discordsync:message/send_minimessage_ingame with storage discordsync:data cm.author