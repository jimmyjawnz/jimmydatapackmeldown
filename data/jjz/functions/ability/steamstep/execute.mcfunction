############## OVERHEAT | EXECUTE ##############

#say STEAMSTEP EXECUTE

scoreboard players reset @s abilityID
tag @s add steamstep

effect give @s speed infinite 6 true
effect give @s jump_boost infinite 2 true
effect give @s darkness infinite 0 true
effect give @s invisibility infinite 0 true

particle poof ~ ~1 ~ 0.1 0.3 0.1 0.2 20 force @a[distance=..30]
particle cloud ~ ~1 ~ 0.1 0.3 0.1 0.1 5 force @a[distance=..30]
playsound item.flintandsteel.use player @a ~ ~ ~ 10 0.7

scoreboard players operation @s steamstepActiveT = base steamstepActiveT

clear @s
tag @s add frozen
function jjz:player/give/smoke



##############################################

## jimmyjawnz