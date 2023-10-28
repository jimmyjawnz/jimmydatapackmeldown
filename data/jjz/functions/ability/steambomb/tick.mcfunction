############# DEFROST | EXECUTE ##############

particle block_marker gray_wool ~ ~ ~ 1.25 1.15 1.25 0 15 force
particle block_marker light_gray_wool ~ ~ ~ 1.55 1.15 1.55 0 15 force

particle campfire_cosy_smoke ~ ~ ~ 1.75 1.35 1.75 0.01 5 normal

#particle dust_color_transition  ~ ~ ~ 1.75 1.55 1.75 0.05 20 force

scoreboard players remove @s steamsmokeTimerT 1
execute if score @s steamsmokeTimerT matches 0 run kill @s

##############################################

## jimmyjawnz