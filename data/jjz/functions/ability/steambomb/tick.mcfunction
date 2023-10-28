############# DEFROST | EXECUTE ##############

particle block_marker gray_wool ~ ~ ~ 1.25 1.15 1.25 0 11 force
particle block_marker light_gray_wool ~ ~ ~ 1.55 1.15 1.55 0 11 force

particle campfire_cosy_smoke ~ ~ ~ 1.75 1.35 1.75 0.01 5 normal

execute if entity @e[tag=team1] run particle dust_color_transition 0.5 0 0 1 0.15 0.15 0.15 ~ ~ ~ 1.55 1.55 1.55 0 5 force
execute if entity @e[tag=team2] run particle dust_color_transition 0 0 0.5 1 0.15 0.15 0.15 ~ ~ ~ 1.55 1.55 1.55 0 5 force
execute if entity @e[tag=team3] run particle dust_color_transition 0 0.5 0 1 0.15 0.15 0.15 ~ ~ ~ 1.55 1.55 1.55 0 5 force
execute if entity @e[tag=team4] run particle dust_color_transition 0.514 0.478 0 1 0.15 0.15 0.15 ~ ~ ~ 1.55 1.55 1.55 0 5 force

scoreboard players remove @s steamsmokeTimerT 1
execute if score @s steamsmokeTimerT matches 0 run kill @s

##############################################

## jimmyjawnz