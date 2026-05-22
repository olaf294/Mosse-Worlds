# Store previous World ID in a score
scoreboard players operation @s previd = @s worldid

# Store x pos in scoreboard (scaled to the next 1000)
execute store result score .temp worldid run data get entity @s Pos[0] .001

# Calculate Modulo to know if you are in the world gap
scoreboard players operation .temp_mod worldid = .temp worldid
scoreboard players operation .temp_mod worldid %= 10 numbers
execute if score .temp_mod worldid matches 4..5 run return run function legitermoose:util/in_border

# Adjust World ID
scoreboard players add .temp worldid 4

# Divide by 10 (and set own World ID)
execute store result score @s worldid run scoreboard players operation .temp worldid /= 10 numbers

# If World ID is not equal previous ID
execute unless score @s worldid = @s previd at @s run playsound entity.experience_orb.pickup block @s ~ ~ ~ 10 1
execute unless score @s worldid = @s previd run function legitermoose:util/changed_world