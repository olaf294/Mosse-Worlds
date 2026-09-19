# Roll what ad will be displayed
$execute store result score .loaded_ad ads run random value 0..$(total_ads)
execute store result storage legitiads:ads loaded_ad int 1 run scoreboard players get .loaded_ad ads

# Show ad
function ads:_random_ad with storage legitiads:ads