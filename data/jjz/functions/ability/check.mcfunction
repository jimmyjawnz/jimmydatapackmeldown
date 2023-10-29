############# OVERHEAT | EXECUTE #############

scoreboard players set @s playerAbilityState 3

execute if entity @s[tag=smoker] run scoreboard players set @s abilityTimer 32
execute if entity @s[tag=smoker] run item replace entity @s hotbar.2 with light_gray_dye 32

execute if entity @s[tag=engineer] run scoreboard players set @s abilityTimer 58
execute if entity @s[tag=engineer] run item replace entity @s hotbar.2 with light_gray_dye 58


##############################################

## jimmyjawnz