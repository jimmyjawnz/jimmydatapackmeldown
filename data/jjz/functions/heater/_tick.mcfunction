################ HEATER | RUN ################

tag @s add thaw

scoreboard players remove @s heaterLife 1
execute if score @s heaterLife matches ..0 run function jjz:heater/destroy
execute if score @s heaterJuice matches 0 run function jjz:heater/ranout


##############################################

## jimmyjawnz