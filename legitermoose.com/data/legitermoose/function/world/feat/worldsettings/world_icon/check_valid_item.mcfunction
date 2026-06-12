summon armor_stand ~ ~ ~ {Tags:["temp_stand"],ShowArms:1b}
$item replace entity @n[type=armor_stand,tag=temp_stand] weapon.offhand with $(name)[] 1
$execute unless items entity @n[type=armor_stand,tag=temp_stand] weapon.offhand $(name) run return fail
scoreboard players set .success legitermoose.temp 1