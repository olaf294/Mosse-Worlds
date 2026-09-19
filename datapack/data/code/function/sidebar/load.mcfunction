scoreboard objectives add list dummy

scoreboard objectives add tps dummy
scoreboard objectives add sidebar dummy
scoreboard objectives modify sidebar numberformat blank
scoreboard players set 1 sidebar 15
scoreboard players set 2 sidebar 14
scoreboard players set 3 sidebar 13
scoreboard players set 4 sidebar 12
scoreboard players set 5 sidebar 11
scoreboard players set 6 sidebar 10

scoreboard objectives modify sidebar displayname \
["",{shadow_color:2147418112,extra:[{color:"gold",text:"M"},{shadow_color:2147421952,extra:[{color:"#FFB208",text:"o"},{shadow_color:2147426048,extra:[{color:"#FFB90F",text:"s"},{shadow_color:2147429888,extra:[{color:"#FFC117",text:"s"},{shadow_color:2147433984,extra:[{color:"#FFC91F",text:"e"},{color:"#FFD127",text:" "},{shadow_color:2147441920,extra:[{color:"#FFD82E",text:"W"},{shadow_color:2147445760,extra:[{color:"#FFE036",text:"o"},{shadow_color:2147449856,extra:[{color:"#FFE83E",text:"r"},{shadow_color:2147453696,extra:[{color:"#FFF046",text:"l"},{shadow_color:2147457792,extra:[{color:"#FFF74D",text:"d"},{color:"yellow",shadow_color:2147461632,text:"s"}],text:""}],text:""}],text:""}],text:""}],text:""}],text:""}],text:""}],text:""}],text:""}],text:""}]

scoreboard players display name 1 sidebar ""
scoreboard players display name 2 sidebar "    Fixed old bugs!"
scoreboard players display name 3 sidebar "     DiscordSync!"
scoreboard players display name 4 sidebar ""
#scoreboard players display name 5 sidebar ""
#scoreboard players display name 6 sidebar ""

# update tps and player lines
function code:sidebar/tps/update_sidebar

stopwatch create sidebar:tps
stopwatch restart sidebar:tps
schedule function code:sidebar/tps/calculate 100t replace