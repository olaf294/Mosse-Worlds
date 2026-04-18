# Banned Worlds
    #execute if data storage minecraft:api good_world.response{world_uuid:"<banned uuid>"} run return fail

# Banned Players
    #execute if data storage minecraft:api good_world.response{owner_uuid:"<banned uuid>"} run return fail

# Better Filters:
# ----------------------
# world with at least 25 votes
execute unless score .votes misc matches 25.. run return run function code:good_world/init
# ---- OR ----
# world with at least 20 votes and 100 visits
execute unless score .votes misc matches 20.. unless score .visits misc matches 100.. run return run function code:good_world/init
# ---- OR ----
# world with at least 15 votes and 80 visits
execute unless score .votes misc matches 15.. unless score .visits misc matches 80.. run return run function code:good_world/init
# ----------------------

function code:good_world/display with storage api good_world.response