############### DEFROST | RUN ###############


function jjz:frozen/unfreeze

playsound minecraft:block.lava.extinguish master @a ~ ~ ~ 1 0.75
playsound minecraft:item.firecharge.use master @a ~ ~ ~ 0.5 0.5
playsound minecraft:block.glass.break master @a ~ ~ ~ 1 1
playsound minecraft:block.glass.break master @a ~ ~ ~ 1 0.6
playsound minecraft:block.glass.break master @a ~ ~ ~ 1 1.5

particle lava ~ ~1 ~ 0 0.2 0 0 10 force
particle flame ~ ~1 ~ 0.7 0.7 0.7 0.05 50 force
particle poof ~ ~1 ~ 0 0.5 0 0.05 10 force
particle ash ~ ~1 ~ 0.2 0.2 0.2 0.05 20 force

say DEFROST HEATER


##############################################

## jimmyjawnz