data modify storage wwlc:outside_callback Macro.job_id set from storage wwlc:poll_params Current.job_id
data modify storage wwlc:outside_callback Macro.user set from storage wwlc:poll_params Current.user
execute if data storage wwlc:http_response PollResponse.response{status:"approved"} run return run function #wwlc:transaction_approved with storage wwlc:outside_callback Macro
execute if data storage wwlc:http_response PollResponse.response{status:"rejected"} run return run function #wwlc:transaction_rejected with storage wwlc:outside_callback Macro