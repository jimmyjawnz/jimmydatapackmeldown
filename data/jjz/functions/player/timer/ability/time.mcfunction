############# OVERHEAT | EXECUTE #############

scoreboard players add @s abilityTimerT 1
execute if score @s abilityTimerT = tickTime abilityTimerT run scoreboard players remove @s abilityTimer 1
execute if score @s abilityTimerT = tickTime abilityTimerT run clear @s light_gray_dye 1
execute if score @s abilityTimerT = tickTime abilityTimerT run scoreboard players set @s abilityTimerT 0
execute if score @s abilityTimer matches 0 run function jjz:player/give/ability


##############################################

## jimmyjawnz