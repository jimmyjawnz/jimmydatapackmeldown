############# DEFROST | EXECUTE ##############

execute if entity @e[type=snowball,nbt={Item:{tag:{CustomModelData:1}}},limit=1,sort=nearest,distance=..0.1] run kill @s
execute unless entity @e[type=snowball,nbt={Item:{tag:{CustomModelData:1}}},limit=1,sort=nearest,distance=..0.1] run particle campfire_cosy_smoke ~ ~ ~ 1.25 1.25 1.25 0.1 10 force

##############################################

## jimmyjawnz