
$execute store result storage legitermoose:temp playercount int 1 if entity @a[scores={worldid=$(world_id)}]
data modify storage legitermoose:temp item.components.lore[3][0].text set string storage legitermoose:temp playercount