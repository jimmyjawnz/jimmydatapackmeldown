############## HEATER | DESTROY ###############

execute if entity @s[nbt=!{ActiveEffects:[{Id:26}]}] run tp ~ -256 ~
execute if entity @s[nbt={ActiveEffects:[{Id:26}]}] run particle heart ~ ~2 ~ 0.3 0.3 0.3 0 5 normal
execute if entity @s[nbt={ActiveEffects:[{Id:26}]}] run effect give @s instant_health 1 9 false 
execute if entity @s[nbt={ActiveEffects:[{Id:26}]}] run effect clear @s luck



##############################################

## jimmyjawnz