############## HEATER | DESTROY ###############

tag @s add ranout

scoreboard players set @s heaterJuice -1

execute if score @s heaterLife matches 180.. run scoreboard players set @s heaterLife 180

playsound block.beacon.deactivate block @a ~ ~ ~ 0.3 1
playsound block.fire.extinguish block @a ~ ~ ~ 0.7 1
particle poof ~ ~0.25 ~ 0.25 0.25 0.25 0.05 20


execute if entity @s[team=1] run item replace entity @s armor.head with furnace{CustomModelData:11,heater:3}
execute if entity @s[team=2] run item replace entity @s armor.head with furnace{CustomModelData:12,heater:3}
execute if entity @s[team=3] run item replace entity @s armor.head with furnace{CustomModelData:13,heater:3}
execute if entity @s[team=4] run item replace entity @s armor.head with furnace{CustomModelData:14,heater:3}



##############################################

## jimmyjawnz