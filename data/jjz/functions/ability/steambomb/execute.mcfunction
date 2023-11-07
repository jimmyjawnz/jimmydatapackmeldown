  ############# DEFROST | EXECUTE ##############

clear @s carrot_on_a_stick{CustomModelData:2}
item replace entity @s hotbar.2 with snowball{display:{Name:'[{"text":"STEAM GRENADE","color":"#FF511C","bold":true,"italic":false},{"text":"","color":"#3D312C","italic":false},{"text":"","color":"#41DE3C","italic":false}]',Lore:['{"text":"Throw or Drop to activate","color":"gray","itdalic":false}','{"text":"AOE: ~5 blocks","color":"gray","italic":false}']},HideFlags:32,droppable:1b,CustomModelData:1,abilityItem:1} 1

playsound minecraft:block.iron_trapdoor.open master @a ~ ~ ~ 1 2
#say STEAMBOMB EXECUTE


##############################################

## jimmyjawnz