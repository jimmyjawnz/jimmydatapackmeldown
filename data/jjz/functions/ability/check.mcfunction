############# OVERHEAT | EXECUTE #############

scoreboard players set @s playerAbilityState 3

execute if entity @s[tag=assassin] run scoreboard players set @s abilityTimer 28
execute if entity @s[tag=assassin] run item replace entity @s hotbar.2 with light_gray_dye 28

execute if entity @s[tag=engineer] run scoreboard players set @s abilityTimer 58
execute if entity @s[tag=engineer] run item replace entity @s hotbar.2 with light_gray_dye 58


##############################################

## jimmyjawnz