  ############# DEFROST | EXECUTE ##############

clear @s carrot_on_a_stick{CustomModelData:2}
item replace entity @s hotbar.2 with snowball{display:{Name:'[{"text":"STEAM-GRENADE","color":"#FF511C","bold":true,"italic":false},{"text":"","color":"#3D312C","italic":false},{"text":"","color":"#41DE3C","italic":false}]',Lore:['{"text":"Right click to prime","color":"gray","italic":false}','{"text":"Throw or hold after","color":"gray","italic":false}']},HideFlags:32,droppable:1b,CustomModelData:1,abilityItem:1} 1
say STEAMBOMB EXECUTE

playsound entity.horse.death master @a ~ ~ ~ 100 2


##############################################

## jimmyjawnz