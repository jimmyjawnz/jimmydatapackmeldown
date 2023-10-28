################ PICKUP | RUN ################

say PICKUP START
playsound item.armor.equip_netherite block @s ~ ~ ~ 1 0.8
scoreboard players set @s heaterTimer 10
item replace entity @s hotbar.1 with gray_dye 10
execute as @e[type=interaction,tag=heater,limit=1,sort=nearest] run function jjz:heater/_pickup




##############################################

## jimmyjawnz