################ PARTICLES | ################

execute at @a[tag=thaw] run particle lava ~ ~1.5 ~ 0.1 0.1 0.1 0 1 force
execute at @e[tag=heating] run particle falling_lava ~ ~0.5 ~ 0.25 0.1 0.25 0 1 force

execute at @e[tag=heater,tag=team1] positioned ~3.5 ~ ~3.5 run particle falling_dust red_wool ~ ~0.5 ~ 0 0 0 0 1 force
execute at @e[tag=heater,tag=team1] positioned ~-3.5 ~ ~-3.5 run particle falling_dust red_wool ~ ~0.5 ~ 0 0 0 0 1 force
execute at @e[tag=heater,tag=team1] positioned ~3.5 ~ ~-3.5 run particle falling_dust red_wool ~ ~0.5 ~ 0 0 0 0 1 force
execute at @e[tag=heater,tag=team1] positioned ~-3.5 ~ ~3.5 run particle falling_dust red_wool ~ ~0.5 ~ 0 0 0 0 1 force

execute at @e[tag=heater,tag=team2] positioned ~3.5 ~ ~3.5 run particle falling_dust blue_wool ~ ~0.5 ~ 0 0 0 0 1 force
execute at @e[tag=heater,tag=team2] positioned ~-3.5 ~ ~-3.5 run particle falling_dust blue_wool ~ ~0.5 ~ 0 0 0 0 1 force
execute at @e[tag=heater,tag=team2] positioned ~3.5 ~ ~-3.5 run particle falling_dust blue_wool ~ ~0.5 ~ 0 0 0 0 1 force
execute at @e[tag=heater,tag=team2] positioned ~-3.5 ~ ~3.5 run particle falling_dust blue_wool ~ ~0.5 ~ 0 0 0 0 1 force

execute at @e[tag=heater,tag=team3] positioned ~3.5 ~ ~3.5 run particle falling_dust emerald_block ~ ~0.5 ~ 0 0 0 0 1 force
execute at @e[tag=heater,tag=team3] positioned ~-3.5 ~ ~-3.5 run particle falling_dust emerald_block ~ ~0.5 ~ 0 0 0 0 1 force
execute at @e[tag=heater,tag=team3] positioned ~3.5 ~ ~-3.5 run particle falling_dust emerald_block ~ ~0.5 ~ 0 0 0 0 1 force
execute at @e[tag=heater,tag=team3] positioned ~-3.5 ~ ~3.5 run particle falling_dust emerald_block ~ ~0.5 ~ 0 0 0 0 1 force

execute at @e[tag=heater,tag=team4] positioned ~3.5 ~ ~3.5 run particle falling_dust yellow_wool ~ ~0.5 ~ 0 0 0 0 1 force
execute at @e[tag=heater,tag=team4] positioned ~-3.5 ~ ~-3.5 run particle falling_dust yellow_wool ~ ~0.5 ~ 0 0 0 0 1 force
execute at @e[tag=heater,tag=team4] positioned ~3.5 ~ ~-3.5 run particle falling_dust yellow_wool ~ ~0.5 ~ 0 0 0 0 1 force
execute at @e[tag=heater,tag=team4] positioned ~-3.5 ~ ~3.5 run particle falling_dust yellow_wool ~ ~0.5 ~ 0 0 0 0 1 force


schedule function jjz:schedule/particles 8t append



##############################################

## jimmyjawnz