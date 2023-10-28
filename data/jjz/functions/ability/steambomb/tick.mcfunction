############# DEFROST | EXECUTE ##############

particle block_marker gray_wool ~ ~ ~ 1.25 1.15 1.25 0 11 force
particle block_marker light_gray_wool ~ ~ ~ 1.55 1.15 1.55 0 11 force

particle campfire_cosy_smoke ~ ~ ~ 1.75 1.35 1.75 0.01 5 normal

execute if entity @s[tag=team1] run particle dust_color_transition 0.75 0 0 3 0.15 0.15 0.15 ~ ~ ~ 1.55 1.55 1.55 0 5 force
execute if entity @s[tag=team2] run particle dust_color_transition 0 0 0.75 3 0.15 0.15 0.15 ~ ~ ~ 1.55 1.55 1.55 0 5 force
execute if entity @s[tag=team3] run particle dust_color_transition 0 0.75 0 3 0.15 0.15 0.15 ~ ~ ~ 1.55 1.55 1.55 0 5 force
execute if entity @s[tag=team4] run particle dust_color_transition 1 0.9 0 3 0.15 0.15 0.15 ~ ~ ~ 1.55 1.55 1.55 0 5 force

scoreboard players remove @s steamsmokeTimerT 1
execute if score @s steamsmokeTimerT matches 0 run kill @s

##############################################

## jimmyjawnz