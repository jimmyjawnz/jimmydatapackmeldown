################# GAME | JOIN ################

tag @s add inGame

## Score Resets ##
scoreboard players reset @s placedHeater
scoreboard players reset @s abilityTimer
scoreboard players reset @s abilityTimerT
scoreboard players reset @s frozenPercent
scoreboard players reset @s frozenPercentT
scoreboard players set @s playerAbilityState 0
scoreboard players set @s playerHeaterState 0
# #

## Inventory Management ##
clear @s
function jjz:player/give/items
# #

## Grant Effects ##
effect give @s minecraft:resistance infinite 255 true
effect give @s minecraft:saturation infinite 255 true
# #


##############################################

## jimmyjawnz