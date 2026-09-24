# Banned Worlds
    #execute if data storage api {good_world:{world_uuid:"<banned uuid>"}} run return fail

# Banned Players
    #execute if data storage api {good_world:{owner_uuid:"<banned uuid>"}} run return fail

# Store values in score
execute store result score .votes misc run data get storage api temp.votes
execute store result score .visits misc run data get storage api temp.visits

# Filters
# ------------ world with at least 25 votes
execute unless score .votes misc matches 25.. run return 0
# ---- OR ---- world with at least 20 votes and 100 visits
execute unless score .votes misc matches 20.. unless score .visits misc matches 100.. run return 0
# ---- OR ---- world with at least 15 votes and 80 visits
execute unless score .votes misc matches 15.. unless score .visits misc matches 80.. run return 0
# ----------------------

function code:good_world/display with storage api temp