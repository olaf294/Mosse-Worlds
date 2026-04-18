data modify storage legitermoose:world_browser world.formatted set value [{text:""}]
data modify storage legitermoose:world_browser world.formatted[0].text set from storage legitermoose:world_browser world.owner

execute if data storage legitermoose:world_browser world{rank:"moose"} run return run data modify storage legitermoose:world_browser world.formatted set value [{text:"ᴍᴏᴏꜱᴇ ",color:"#FF00FF"},{text:"| ",color:dark_gray},{text:"L",color:"#FF2050"},{text:"e",color:"#FF2160"},{text:"g",color:"#FF2370"},{text:"i",color:"#FF2480"},{text:"t",color:"#FF2690"},\
{text:"e",color:"#FF27A0"},{text:"r",color:"#FF29AF"},{text:"m",color:"#FF2ABF"},{text:"o",color:"#FF2CCF"},{text:"o",color:"#FF2DDF"},{text:"s",color:"#FF2FEF"},{text:"e",color:"#FF30FF"}]

execute if data storage legitermoose:world_browser world{rank:"mm"} run data modify storage legitermoose:world_browser world.formatted prepend value [{text:"ᴍᴍ💰 ",color:"dark_green"},{text:"| ",color:dark_gray}]
execute if data storage legitermoose:world_browser world{rank:"mm"} run return run data modify storage legitermoose:world_browser world.formatted[1].color set value "#80d480"

execute if data storage legitermoose:world_browser world{rank:"xm"} run data modify storage legitermoose:world_browser world.formatted prepend value [{text:"xᴍ ",color:"#ff33ff"},{text:"| ",color:dark_gray}]
execute if data storage legitermoose:world_browser world{rank:"xm"} run return run data modify storage legitermoose:world_browser world.formatted[1].color set value "#d662ff"

execute if data storage legitermoose:world_browser world{rank:"fm2"} run data modify storage legitermoose:world_browser world.formatted prepend value [{text:"ꜰᴍ",color:"#8888ff"},{text:"² ",color:"#ba094a"},{text:"| ",color:dark_gray}]
execute if data storage legitermoose:world_browser world{rank:"fm2"} run return run data modify storage legitermoose:world_browser world.formatted[1].color set value "#6ec4ff"

execute if data storage legitermoose:world_browser world{rank:"fm"} run data modify storage legitermoose:world_browser world.formatted prepend value [{text:"ꜰᴍ ",color:"#8888ff"},{text:"| ",color:dark_gray}]
execute if data storage legitermoose:world_browser world{rank:"fm"} run return run data modify storage legitermoose:world_browser world.formatted[1].color set value "#6ec4ff"

execute if data storage legitermoose:world_browser world{rank:"am"} run data modify storage legitermoose:world_browser world.formatted prepend value [{text:"ᴀᴍ ",color:"#98fdb5"},{text:"| ",color:dark_gray}]
execute if data storage legitermoose:world_browser world{rank:"am"} run return run data modify storage legitermoose:world_browser world.formatted[1].color set value "#9aeeb2"