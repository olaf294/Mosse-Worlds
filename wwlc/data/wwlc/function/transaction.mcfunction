# Creates a transaction
#
# @param job_id: String

$data modify storage wwlc:http_body TransactionBody set value { \
    job: "$(job_id)",\
}
$data modify storage wwlc:http_body TransactionBody.job_token set from storage wwlc:config Jobs[{id:$(job_id)}].token
function uuid:_
data modify storage wwlc:http_body TransactionBody.user set from storage uuid:out plain
data modify storage wwlc:http_body TransactionBody.world_token set from storage wwlc:config WorldToken
http body storage wwlc:http_body TransactionBody headers value {"Content-Type": "application/json"} callback wwlc:zzz/transaction_callback \
    store wwlc:http_response TransactionResponse send "wwlc.legiti.dev/api/transaction/create" POST
$execute unless data storage wwlc:config Jobs[{id: "$(job_id)",type: "buy"}] run tag @s add transactionman