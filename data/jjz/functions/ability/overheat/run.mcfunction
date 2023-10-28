############### OVERHEAT | RUN ###############

say OVERHEAT RUN
tag @s remove completeOverheat

execute if entity @s[tag=team1] positioned ~-3 ~-3 ~-3 as @a[dx=5,dy=5,dz=5,team=1,tag=frozen] at @s run function jjz:heater/defrost_overheat
execute if entity @s[tag=team2] positioned ~-3 ~-3 ~-3 as @a[dx=5,dy=5,dz=5,team=2,tag=frozen] at @s run function jjz:heater/defrost_overheat
execute if entity @s[tag=team3] positioned ~-3 ~-3 ~-3 as @a[dx=5,dy=5,dz=5,team=3,tag=frozen] at @s run function jjz:heater/defrost_overheat
execute if entity @s[tag=team4] positioned ~-3 ~-3 ~-3 as @a[dx=5,dy=5,dz=5,team=4,tag=frozen] at @s run function jjz:heater/defrost_overheat
function jjz:heater/destroy

function jjz:sounds/explode
particle ash ~ ~0.5 ~ 0.35 0.35 0.35 0.05 100
particle large_smoke ~ ~0.5 ~ 0.1 0.1 0.1 0.1 50
particle lava ~ ~0.5 ~ 0.1 0 0.1 0.1 30


##############################################

## jimmyjawnz