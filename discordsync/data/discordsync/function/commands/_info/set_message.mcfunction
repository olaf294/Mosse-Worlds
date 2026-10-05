# macro, args:
#   votes, visits, registered, count_spawn, count_legiter: integer
$data modify storage discordsync:data body.content set value "**__World Info__**:\n  Votes: $(votes)\n  Visits: $(visits)\n  Registered Players: $(registered)\n  Spawn Players: $(count_spawn)\n  Legitermoose Players: $(count_legiter)"