execute store result storage legitermoose:temp votes int 1 run scoreboard players get .votes legitermoose.misc
execute store result storage legitermoose:temp visits int 1 run scoreboard players get .visits legitermoose.misc
execute store result storage legitermoose:temp players int 1 run scoreboard players get .players legitermoose.misc

item replace block 992 56 5 container.13 with grass_block[item_name={text:"Lobby",color:white},lore=[{text:"Join and type /edit to change the description!",italic:0b,color:gray},"",\
            {text:"0",color:green,italic:0b,extra:[{text:"/",color:green,italic:0b},{text:"100",color:green,italic:0b},{text:" playing",color:gray,italic:0b}]},\
            {text:"0",color:green,italic:0b,extra:[{text:" votes, ",color:gray,italic:0b},{text:"0",color:green,italic:0b},{text:" visits",color:gray,italic:0b}]},\
            {text:"by ",color:gray,italic:0b,extra:[{text:"Legitimoose Community",color:gray,italic:0b}]},{color:"dark_green",extra:[{color:"dark_gray",text:"12/01/23"}],italic:0b,text:"⭐ Featured ⭐ "}],custom_data={ui:1b,lobby:1b}]

data modify block 992 56 5 Items[0].components.minecraft:lore[3].text set string storage legitermoose:temp votes
data modify block 992 56 5 Items[0].components.minecraft:lore[3].extra[1].text set string storage legitermoose:temp visits
data modify block 992 56 5 Items[0].components.minecraft:lore[2].text set string storage legitermoose:temp players