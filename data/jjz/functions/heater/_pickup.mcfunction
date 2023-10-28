############## HEATER | DESTROY ###############

execute at @a[tag=hasPlacedHeater] if score @s playerID = @p playerID run tag @p remove hasPlacedHeater

setblock ~ ~ ~ air
particle cloud ~ ~0.25 ~ 0 0 0 0 2
kill @s
kill @e[type=item_display,limit=1,sort=nearest,tag=heaterModel]




##############################################

## jimmyjawnz