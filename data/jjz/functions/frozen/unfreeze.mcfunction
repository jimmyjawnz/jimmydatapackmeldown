##################### HIT ####################


execute at @s run setblock ~ ~0.1 ~ air replace
execute at @s run setblock ~ ~1.1 ~ air replace
advancement revoke @s only jjz:gothit
tag @s remove frozen
summon arrow ~ ~2.25 ~ {PierceLevel:0b,Silent:1b,Fire:1000,HasVisualFire:0b,pickup:2b,life:10,damage:0.001d,Motion:[0.0,-0.1,0.0]}
scoreboard players set @s frozenPercent 0

function jjz:player/give/items



effect clear @s minecraft:jump_boost
effect clear @s minecraft:slowness

say UNFROZEN


##############################################

## jimmyjawnz