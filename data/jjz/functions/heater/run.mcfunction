################ HEATER | RUN ################

tag @s add thaw

scoreboard players add @s frozenPercentT 1
execute if score @s frozenPercentT >= tickTime frozenPercentT run scoreboard players remove @s frozenPercent 1
execute if score @s frozenPercentT >= tickTime frozenPercentT run scoreboard players set @s frozenPercentT 0

execute if score @s frozenPercent matches ..0 run function jjz:heater/defrost


##############################################

## jimmyjawnz