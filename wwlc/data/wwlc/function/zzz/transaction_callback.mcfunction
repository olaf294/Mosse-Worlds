execute store result score $status_code wwlc.temp run data get storage wwlc:http_response TransactionResponse.status_code

# buy types are auto approved so dont prompt this
tellraw @p[tag=transactionman] {text: "You will now have to approve this transaction.", color:"yellow"}
tellraw @p[tag=transactionman] {\
    text: "Click here to access your dashboard",\
    click_event: {action: "open_url",\
    url: "https://wwlc.legiti.dev/dashboard/transactions"}\
}
tag @p[tag=transactionman] remove transactionman

data modify storage wwlc:poll_params Current.id set from storage wwlc:http_response TransactionResponse.response.id
data modify storage wwlc:poll_params Current.job_id set from storage wwlc:http_body TransactionBody.job
data modify storage wwlc:poll_params Current.job_token set from storage wwlc:http_body TransactionBody.job_token
data modify storage wwlc:poll_params Current.world_token set from storage wwlc:http_body TransactionBody.world_token
data modify storage wwlc:poll_params Current.user set from storage wwlc:http_body TransactionBody.user
data modify storage wwlc:poll_params Params append from storage wwlc:poll_params Current

function wwlc:zzz/poll