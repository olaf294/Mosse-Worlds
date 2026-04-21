tellraw @s {text:"Slow down!",color:red}
scoreboard players set @s timeout 600
inventory @s close

clear @s *[custom_data~{navigator.world:1b}]