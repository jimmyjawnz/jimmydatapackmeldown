############# OVERHEAT | EXECUTE #############

scoreboard players add @s heaterTimerT 1
execute if score @s heaterTimerT = tickTime heaterTimerT run scoreboard players remove @s heaterTimer 1
execute if score @s heaterTimerT = tickTime heaterTimerT run clear @s gray_dye 1
execute if score @s heaterTimerT = tickTime heaterTimerT run scoreboard players set @s heaterTimerT 0
execute if score @s heaterTimer matches 0 run function jjz:player/give/heater


##############################################

## jimmyjawnz