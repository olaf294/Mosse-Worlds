data modify storage discordsync:data temp.pd.moose set value ""
data modify storage discordsync:data temp.pd.polish set value ""
data modify storage discordsync:data temp.pd.arvelyx set value ""
data modify storage discordsync:data temp.pd.max set value ""
data modify storage discordsync:data temp.pd.koori set value ""
data modify storage discordsync:data temp.pd.cjf set value ""
data modify storage discordsync:data temp.pd.hazel set value ""
data modify storage discordsync:data temp.pd.torston set value ""
data modify storage discordsync:data temp.pd.logbog set value ""

execute if score .moose_online playerdetect matches 1 run data modify storage discordsync:data temp.pd.moose set value "**Legitermoose**"
execute if score .polish_online playerdetect matches 1 run data modify storage discordsync:data temp.pd.polish set value "**PolishKrowa**"
execute if score .arvelyx_online playerdetect matches 1 run data modify storage discordsync:data temp.pd.arvelyx set value "**Arvelyx**"
execute if score .max_online playerdetect matches 1 run data modify storage discordsync:data temp.pd.max set value "**mmmmmaaaaaxxxxx**"
execute if score .koori_online playerdetect matches 1 run data modify storage discordsync:data temp.pd.koori set value "**KooriKitsune38**"
execute if score .cjf_online playerdetect matches 1 run data modify storage discordsync:data temp.pd.torston set value "**CJF1**"
execute if score .hazel_online playerdetect matches 1 run data modify storage discordsync:data temp.pd.logbog set value "**hablethedev**"
execute if score .torston_online playerdetect matches 1 run data modify storage discordsync:data temp.pd.torston set value "**T0rston**"
execute if score .logbog_online playerdetect matches 1 run data modify storage discordsync:data temp.pd.logbog set value "**Logbog**"

data modify storage discordsync:data temp.pd.noone set value "**__Online Staff__**:\n"
execute \
unless score .moose_online playerdetect matches 1 \
unless score .polish_online playerdetect matches 1 \
unless score .arvelyx_online playerdetect matches 1 \
unless score .max_online playerdetect matches 1 \
unless score .koori_online playerdetect matches 1 \
unless score .cjf_online playerdetect matches 1 \
unless score .hazel_online playerdetect matches 1 \
unless score .torston_online playerdetect matches 1 \
unless score .logbog_online playerdetect matches 1 run data modify storage discordsync:data temp.pd.noone set value "**No staff members are online at the moment.**"

function discordsync:commands/_pd/set_message with storage discordsync:data temp.pd
function discordsync:message/send with storage discordsync:data data