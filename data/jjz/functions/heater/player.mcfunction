############## HEATER | PLAYER ###############

execute if entity @s[tag=team1] positioned ~-3 ~-3 ~-3 as @a[dx=5,dy=5,dz=5,team=1,tag=frozen] at @s run function jjz:heater/run
execute if entity @s[tag=team2] positioned ~-3 ~-3 ~-3 as @a[dx=5,dy=5,dz=5,team=2,tag=frozen] at @s run function jjz:heater/run
execute if entity @s[tag=team3] positioned ~-3 ~-3 ~-3 as @a[dx=5,dy=5,dz=5,team=3,tag=frozen] at @s run function jjz:heater/run
execute if entity @s[tag=team4] positioned ~-3 ~-3 ~-3 as @a[dx=5,dy=5,dz=5,team=4,tag=frozen] at @s run function jjz:heater/run

execute if entity @a[dx=5,dy=5,dz=5,tag=thaw] run tag @s add heating
scoreboard players remove @s heaterJuice 1

particle smoke ~ ~0.25 ~ 0.1 0.1 0.1 0.01 1

#say HEATER


##############################################

## jimmyjawnz