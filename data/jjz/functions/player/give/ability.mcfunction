############# OVERHEAT | EXECUTE #############

execute if entity @s[tag=engineer] run item replace entity @s hotbar.2 with blaze_rod{display:{Name:'{"text":"OVER-HEAT","color":"#FF511C","bold":true,"italic":false}',Lore:['{"text":"Causes a heater to overheat","color":"gray","italic":false}','{"text":"Time: 3 seconds","color":"gray","italic":true}','{"text":"Cooldown: 38 seconds","color":"gray","italic":true}']},CustomModelData:1,abilityItem:1}
execute if entity @s[tag=tank] run item replace entity @s hotbar.2 with glow_item_frame{display:{Name:'{"text":"Heater","color":"#FF511C","bold":true,"italic":false}',Lore:['{"text":"Place to un-freeze teammates","color":"gray","italic":false}','{"text":"AoE: 3 blocks","color":"gray","italic":true}']},CustomModelData:2,abilityItem:1,EntityTag:{Invulnerable:1b,Invisible:1b,Fixed:1b,Silent:1b}}
execute if entity @s[tag=assassin] run item replace entity @s hotbar.2 with minecraft:carrot_on_a_stick{display:{Name:'[{"text":"STEAM-BOMB","color":"#FF511C","bold":true,"italic":false},{"text":"","color":"#3D312C","italic":false},{"text":"","color":"#41DE3C","italic":false}]',Lore:['{"text":"Right click to prime","color":"gray","italic":false}','{"text":"Throw or hold after","color":"gray","italic":false}']},HideFlags:32,CustomModelData:3,abilityItem:1}
execute if entity @s[tag=marksman] run item replace entity @s hotbar.2 with glow_item_frame{display:{Name:'{"text":"Heater","color":"#FF511C","bold":true,"italic":false}',Lore:['{"text":"Place to un-freeze teammates","color":"gray","italic":false}','{"text":"AoE: 3 blocks","color":"gray","italic":true}']},CustomModelData:4,abilityItem:1,EntityTag:{Invulnerable:1b,Invisible:1b,Fixed:1b,Silent:1b}}


##############################################

## jimmyjawnz