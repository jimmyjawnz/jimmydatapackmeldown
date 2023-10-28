############# OVERHEAT | EXECUTE #############

stopsound @a block block.anvil.place
stopsound @a block block.beacon.activate

say no heater here
execute if block ~ ~ ~ soul_lantern run setblock ~ ~ ~ air
item replace entity @s hotbar.1 with glow_item_frame{display:{Name:'{"text":"Heater","color":"#DB6430","bold":true,"italic":false}',Lore:['{"text":"Place to un-freeze teammates","color":"gray","italic":false}','{"text":"AoE: 3 blocks","color":"gray","italic":true}']},CustomModelData:10,heater:1,EntityTag:{Invulnerable:1b,Invisible:1b,Fixed:1b,Silent:1b}}
function jjz:player/give/heater


##############################################

## jimmyjawnz