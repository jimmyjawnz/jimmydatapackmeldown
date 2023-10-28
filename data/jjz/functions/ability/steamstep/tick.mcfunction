############## OVERHEAT | EXECUTE ##############

scoreboard players remove @s steamstepActiveT 1
particle poof ~ ~1 ~ 0 0 0 0 1 force @a[distance=..30]
execute if score @s steamstepActiveT matches 0 run function jjz:ability/steamstep/end
execute if entity @s[nbt={Inventory:[{id:"minecraft:packed_ice"}]}] run function jjz:ability/steamstep/end


##############################################

## jimmyjawnz