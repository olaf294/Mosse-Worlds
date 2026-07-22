kill @e[tag=legitermoose.spawn]

summon mannequin 993.5 65.0 2.5 {Tags:["legitermoose.spawn","legitermoose.spawn.play"],profile:LegitimooseAPI,Rotation:[-90,20],CustomName:[{text:"Play ",bold:1b,color:green},{text:"(Click me!)",color:gray,bold:0b}],CustomNameVisible:1b,hide_description:1b,Invulnerable:1b,immovable:1b}
summon mannequin 993.5 65.0 -1.5 {Tags:["legitermoose.spawn","legitermoose.spawn.create"],profile:Legitermoose,Rotation:[-90,20],CustomName:[{text:"Create ",bold:1b,color:aqua},{text:"(Click me!)",color:gray,bold:0b}],CustomNameVisible:1b,hide_description:1b,Invulnerable:1b,immovable:1b}

summon interaction 993.5 65.0 2.5 {Tags:["legitermoose.spawn","legitermoose.spawn.interact_play"],width:1,height:1.9}
summon interaction 993.5 65.0 -1.5 {Tags:["legitermoose.spawn","legitermoose.spawn.interact_create"],width:1,height:1.9}