# set values {year,month,day,hour,minute,second,ms}
$scoreboard players set .year iso8601convert $(year)
$scoreboard players set .month iso8601convert $(month)
$scoreboard players set .day iso8601convert $(day)
$scoreboard players set .hour iso8601convert $(hour)
$scoreboard players set .minute iso8601convert $(minute)
$scoreboard players set .second iso8601convert $(second)
$scoreboard players set .ms iso8601convert $(ms)

# calculate difference of ms
scoreboard players set 50 iso8601convert 50
scoreboard players operation .ms iso8601convert /= 50 iso8601convert
scoreboard players operation .ms iso8601convert -= .time_add time
scoreboard players operation .ms iso8601convert *= 50 iso8601convert

# other differences
scoreboard players operation .year iso8601convert -= .year time
scoreboard players operation .month iso8601convert -= .month time
scoreboard players operation .day iso8601convert -= .day time
scoreboard players operation .hour iso8601convert -= .hour_utc time
scoreboard players operation .minute iso8601convert -= .minutes time
scoreboard players operation .second iso8601convert -= .seconds time

scoreboard players operation .d iso8601convert = .ms iso8601convert
execute unless score .d iso8601convert matches 0.. run scoreboard players operation .d iso8601convert *= -1 iso8601convert

scoreboard players operation .second iso8601convert *= 1000 iso8601convert
scoreboard players operation .d iso8601convert += .second iso8601convert

scoreboard players operation .minute iso8601convert *= 60000 iso8601convert
scoreboard players operation .d iso8601convert += .minute iso8601convert

scoreboard players operation .hour iso8601convert *= 3600000 iso8601convert
scoreboard players operation .d iso8601convert += .hour iso8601convert


# storage stuff (storing and removing ".0d")
execute unless score .d iso8601convert matches 0.. run scoreboard players operation .d iso8601convert *= -1 iso8601convert
execute store result storage discordsync:data temp.d double 1 run scoreboard players get .d iso8601convert
data modify storage discordsync:data temp.d set string storage discordsync:data temp.d 0 -3
function discordsync:commands/_ping/set with storage discordsync:data temp