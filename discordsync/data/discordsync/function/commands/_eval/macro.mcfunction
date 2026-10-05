$data modify storage discordsync:data temp.concat.a set value "$(command)"

# destroy command blocks
fill 1000 50 5 1000 50 6 air strict

$setblock 1000 50 6 command_block{Command:"$(command)",auto:1b,CustomName:[{text:"👾 Dɪꜱᴄᴏʀᴅ",color:"#9999ff"},{text:"Sʏɴᴄ",color:"#7777ff"}]} strict
schedule function discordsync:commands/_eval/part2 2