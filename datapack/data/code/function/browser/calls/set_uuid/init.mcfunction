execute unless items entity @s weapon.offhand written_book unless items entity @s weapon.offhand writable_book run return run function code:browser/calls/set_uuid/give_book

data modify storage a custom.uuid set from entity @s equipment.offhand.components.minecraft:written_book_content.pages[0].raw
function code:browser/calls/set_uuid/macro with storage a custom