kill @e[tag=time]
summon text_display 13.90 69.0 0.5 {text:[{text:"Cᴜʀʀᴇɴᴛ Tɪᴍᴇ (UTC ",color:gold},{score:{name:".offset",objective:time},color:red},{text:")\n",color:gold},{text:"hh",color:green},{text:":",color:dark_gray},{text:"mm",color:green},{text:":",color:dark_gray},{text:"ss",color:green}],Tags:["time_utc","time"],Rotation:[90,0],transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [2.0f, 2.0f, 2.0f], translation: [0.0f, 0.0f, 0.0f]}}
summon text_display 13.90 68.1 0.5 {text:[{text:" Cᴜʀʀᴇɴᴛ Dᴀᴛᴇ \n",color:light_purple},{text:"dd",color:yellow},{text:".",color:dark_gray},{text:"mm",color:yellow},{text:".",color:dark_gray},{text:"yyyy",color:yellow}],Tags:["date_utc","time"],Rotation:[90,0],transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.5f, 1.5f, 1.5f], translation: [0.0f, 0.0f, 0.0f]}}

scoreboard players set .offset time 0
scoreboard players set .hours time 0
function code:realtime/date
function code:realtime/update