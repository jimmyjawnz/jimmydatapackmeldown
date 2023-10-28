############## HEATER | SUMMON ###############


execute if entity @s[nbt={Facing:2b}] positioned ~ ~-0.45 ~-0.5 run function jjz:heater/summon
execute if entity @s[nbt={Facing:3b}] positioned ~ ~-0.45 ~0.5 run function jjz:heater/summon
execute if entity @s[nbt={Facing:4b}] positioned ~-0.5 ~-0.45 ~ run function jjz:heater/summon
execute if entity @s[nbt={Facing:5b}] positioned ~0.5 ~-0.45 ~ run function jjz:heater/summon
execute if entity @s[nbt={Facing:1b}] positioned ~ ~ ~ run function jjz:heater/summon
execute if entity @s[nbt={Facing:0b}] positioned ~ ~-0.9 ~ run function jjz:heater/summon

playsound block.anvil.place block @a ~ ~ ~ 0.25 0.75
playsound minecraft:block.beacon.activate block @a ~ ~ ~ 0.3 1


##############################################

## jimmyjawnz