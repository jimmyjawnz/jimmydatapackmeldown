############## OVERHEAT | EXECUTE ##############

tag @s remove steamstep

effect clear @s speed
effect clear @s jump_boost
effect clear @s darkness
effect clear @s invisibility

particle poof ~ ~1 ~ 0.1 0.3 0.1 0.2 20 force @a[distance=..30]
particle cloud ~ ~1 ~ 0.1 0.3 0.1 0.1 20 force @a[distance=..30]
playsound block.fire.extinguish player @a ~ ~ ~ 10 0.7

tag @s remove frozen
clear @s
function jjz:player/give/items



##############################################

## jimmyjawnz