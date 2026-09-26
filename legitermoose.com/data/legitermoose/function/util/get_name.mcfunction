data modify storage legitermoose:temp playername set value "ERROR"
execute in overworld run loot replace block 1006 52 6 container.0 loot legitermoose:player_head
execute in overworld run data modify storage legitermoose:temp playername set from block 1006 52 6 Items[0].components.minecraft:profile.name