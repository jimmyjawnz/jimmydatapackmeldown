############# OVERHEAT | EXECUTE #############

#> Crack (Overheat)
execute if score @s class matches 1 run item replace entity @s hotbar.2 with blaze_rod{display:{Name:'{"text":"OVER-HEAT","color":"#FF511C","bold":true,"italic":false}',Lore:['{"text":"Causes a heater to overheat","color":"gray","italic":false}','{"text":"Time: 3 seconds","color":"gray","italic":true}','{"text":"Cooldown: 38 seconds","color":"gray","italic":true}']},CustomModelData:1,abilityItem:1}
#> Fuze (De-Frost)
execute if score @s class matches 2 run item replace entity @s hotbar.2 with minecraft:carrot_on_a_stick{display:{Name:'[{"text":"DE-FROST","color":"#FF511C","bold":true,"italic":false},{"text":"","color":"#3D312C","italic":false},{"text":"","color":"#41DE3C","italic":false}]',Lore:['{"text":"Right while frozen to become unfrozen","color":"gray","italic":false}']},HideFlags:32,CustomModelData:1,abilityItem:1}
#> Ghost (Steamstep)
execute if score @s class matches 3 run item replace entity @s hotbar.2 with minecraft:carrot_on_a_stick{display:{Name:'[{"text":"STEAMSTEP","color":"#FF511C","bold":true,"italic":false},{"text":"","color":"#3D312C","italic":false},{"text":"","color":"#41DE3C","italic":false}]',Lore:['{"text":"Right click to prime","color":"gray","italic":false}','{"text":"Throw or hold after","color":"gray","italic":false}']},HideFlags:32,CustomModelData:3,abilityItem:1}
#> Tank guy (Immolation)
execute if score @s class matches 4 run item replace entity @s hotbar.2 with glow_item_frame{display:{Name:'{"text":"IMMOLATION","color":"#FF511C","bold":true,"italic":false}',Lore:['{"text":"Place or drop to block all ice arrows","color":"gray","italic":false}','{"text":"AoE: 3w3h1d blocks","color":"gray","italic":true}']},CustomModelData:4,abilityItem:1,EntityTag:{Invulnerable:1b,Invisible:1b,Fixed:1b,Silent:1b}}
#> Smog (Steam Grenade)
execute if score @s class matches 5 run item replace entity @s hotbar.2 with minecraft:carrot_on_a_stick{display:{Name:'[{"text":"STEAM GRENADE","color":"#FF511C","bold":true,"italic":false},{"text":"","color":"#3D312C","italic":false},{"text":"","color":"#41DE3C","italic":false}]',Lore:['{"text":"Right click to prime","color":"gray","italic":false}','{"text":"Throw or drop after","color":"gray","italic":false}']},HideFlags:32,CustomModelData:2,abilityItem:1}
#> Frost (Frost Grenade)
execute if score @s class matches 6 run item replace entity @s hotbar.2 with minecraft:carrot_on_a_stick{display:{Name:'[{"text":"FROST GRENADE","color":"#FF511C","bold":true,"italic":false},{"text":"","color":"#3D312C","italic":false},{"text":"","color":"#41DE3C","italic":false}]',Lore:['{"text":"Right click to prime","color":"gray","italic":false}','{"text":"Throw or drop after","color":"gray","italic":false}']},HideFlags:32,CustomModelData:2,abilityItem:1}
#> Marksman (Fiery Echo)
execute if score @s class matches 7 run item replace entity @s hotbar.2 with minecraft:carrot_on_a_stick{display:{Name:'[{"text":"FIERY ECHO","color":"#FF511C","bold":true,"italic":false},{"text":"","color":"#3D312C","italic":false},{"text":"","color":"#41DE3C","italic":false}]',Lore:['{"text":"Right click and your next arrow fires a recon.","color":"gray","italic":false}','{"text":"Throw or drop after","color":"gray","italic":false}']},HideFlags:32,CustomModelData:2,abilityItem:1}
#> Inincablees (Siphon)
execute if score @s class matches 8 run item replace entity @s hotbar.2 with gold_ingot{display:{Name:'{"text":"SIPHON","color":"#FF511C","bold":true,"italic":false}',Lore:['{"text":"Connects you to a heater which grants immunity","color":"gray","italic":false}','{"text":"Time: 8 seconds","color":"gray","italic":true}','{"text":"Cooldown: 38 seconds","color":"gray","italic":true}']},CustomModelData:2,abilityItem:1}



##############################################

## jimmyjawnz