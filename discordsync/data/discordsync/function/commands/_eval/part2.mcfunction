# runs after the command ran

data modify entity e-0-0-0-e CustomName set from block 1000 50 6 LastOutput

setblock 1000 50 5 command_block{Command:"enchant e-0-0-0-e lure",auto:1b} strict

schedule function discordsync:commands/_eval/part3 2