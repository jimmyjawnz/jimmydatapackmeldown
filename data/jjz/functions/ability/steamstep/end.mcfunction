############## OVERHEAT | EXECUTE ##############

tag @s remove steamstep
scoreboard players set @s steamstepActiveT 0

effect clear @s speed
effect clear @s jump_boost
effect clear @s darkness
effect clear @s invisibility

particle poof ~ ~1 ~ 0.1 0.3 0.1 0.2 20 force @a[distance=..30]
particle cloud ~ ~1 ~ 0.1 0.3 0.1 0.1 20 force @a[distance=..30]
playsound block.fire.extinguish player @a ~ ~ ~ 10 0.7


execute unless entity @s[nbt={Inventory:[{id:"minecraft:packed_ice"}]}] run tag @s remove frozen
execute unless entity @s[nbt={Inventory:[{id:"minecraft:packed_ice"}]}] run clear @s
execute unless entity @s[nbt={Inventory:[{id:"minecraft:packed_ice"}]}] run function jjz:player/give/items



##############################################

## jimmyjawnz