$item replace block -4 64 16 container.$(slot) with poisonous_potato[item_model="$(item)",lore=$(desc),custom_data={id:"$(id)",slot:$(slot)}]
$execute as @p run item modify block -4 64 16 container.$(slot) code:browser
$execute as @p unless data storage a temp{version:"26.3"} run item modify block -4 64 16 container.$(slot) code:outdated