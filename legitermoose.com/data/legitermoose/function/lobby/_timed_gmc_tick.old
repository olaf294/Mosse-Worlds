execute positioned 1000 64 0 unless entity @s[distance=..300] run return fail
scoreboard players remove @s legitermoose.gmc_time 1

# get seconds
scoreboard players operation .seconds legitermoose.misc = @s legitermoose.gmc_time
scoreboard players operation .seconds legitermoose.misc /= 20 numbers

scoreboard players operation .minutes legitermoose.misc = .seconds legitermoose.misc
scoreboard players operation .minutes legitermoose.misc /= 60 numbers

scoreboard players operation .hours legitermoose.misc = .seconds legitermoose.misc
scoreboard players operation .hours legitermoose.misc /= 3600 numbers

scoreboard players operation .seconds legitermoose.misc %= 60 numbers
scoreboard players operation .minutes legitermoose.misc %= 60 numbers


execute unless score .seconds legitermoose.misc matches 0..9 unless score .minutes legitermoose.misc matches 0..9 run title @s actionbar \
[{text:"• • | ",color:dark_green},{score:{name:".hours",objective:"legitermoose.misc"},color:yellow},{text:" : ",color:dark_green},\
                                    {score:{name:".minutes",objective:"legitermoose.misc"},color:yellow},{text:" : ",color:dark_green},\
                                    {score:{name:".seconds",objective:"legitermoose.misc"},color:yellow},\
                                    {text:" remaining | • •",color:dark_green}]

execute if score .seconds legitermoose.misc matches 0..9 unless score .minutes legitermoose.misc matches 0..9 run title @s actionbar \
[{text:"• • | ",color:dark_green},{score:{name:".hours",objective:"legitermoose.misc"},color:yellow},{text:" : ",color:dark_green},\
                                    {score:{name:".minutes",objective:"legitermoose.misc"},color:yellow},{text:" : ",color:dark_green},\
                                    {text:"0",color:yellow},{score:{name:".seconds",objective:"legitermoose.misc"},color:yellow},\
                                    {text:" remaining | • •",color:dark_green}]

execute unless score .seconds legitermoose.misc matches 0..9 if score .minutes legitermoose.misc matches 0..9 run title @s actionbar \
[{text:"• • | ",color:dark_green},{score:{name:".hours",objective:"legitermoose.misc"},color:yellow},{text:" : ",color:dark_green},\
                                    {text:"0",color:yellow},{score:{name:".minutes",objective:"legitermoose.misc"},color:yellow},{text:" : ",color:dark_green},\
                                    {score:{name:".seconds",objective:"legitermoose.misc"},color:yellow},\
                                    {text:" remaining | • •",color:dark_green}]

execute if score .seconds legitermoose.misc matches 0..9 if score .minutes legitermoose.misc matches 0..9 run title @s actionbar \
[{text:"• • | ",color:dark_green},{score:{name:".hours",objective:"legitermoose.misc"},color:yellow},{text:" : ",color:dark_green},\
                                    {text:"0",color:yellow},{score:{name:".minutes",objective:"legitermoose.misc"},color:yellow},{text:" : ",color:dark_green},\
                                    {text:"0",color:yellow},{score:{name:".seconds",objective:"legitermoose.misc"},color:yellow},\
                                    {text:" remaining | • •",color:dark_green}]



tag @a[scores={legitermoose.gmc_time=..0}] remove legitermoose.disable_global_time
execute if score @s legitermoose.gmc_time matches ..0 run function legitermoose:gm/a