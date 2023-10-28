##################### HIT ####################

tag @s add frozen
scoreboard players set @s frozenPercent 100
function jjz:player/give/frozen


execute at @s run summon minecraft:leash_knot ~ ~ ~
execute positioned as @s run tp @s @e[type=leash_knot,limit=1,sort=nearest,distance=..1]
kill @e[type=leash_knot,limit=1,sort=nearest,distance=..1]

execute at @s run setblock ~ ~0.1 ~ powder_snow replace
#execute at @s run setblock ~ ~1.1 ~ smooth_quartz_slab[type=top] replace


effect give @s minecraft:jump_boost 999 146 true
effect give @s minecraft:slowness 999 225 true
say FROZEN


##############################################

## jimmyjawnz