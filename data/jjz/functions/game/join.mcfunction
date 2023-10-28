################# GAME | JOIN ################

tag @s add inGame

## Score Resets ##
scoreboard players set @s placedHeater 0
scoreboard players set @s abilityTimer 0
scoreboard players set @s abilityTimerT 0
scoreboard players set @s frozenPercent 0
scoreboard players set @s frozenPercentT 0
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