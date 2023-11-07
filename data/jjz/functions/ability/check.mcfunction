############# OVERHEAT | EXECUTE #############

scoreboard players set @s playerAbilityState 3

#> Crack (Overheat)
execute if score @s class matches 1 run scoreboard players set @s abilityTimer 48
execute if score @s class matches 1 run item replace entity @s hotbar.2 with light_gray_dye 48

#> Fuze (De-Frost)
execute if score @s class matches 2 run scoreboard players set @s abilityTimer 42
execute if score @s class matches 2 run item replace entity @s hotbar.2 with light_gray_dye 42

#> Ghost (Steamstep)
execute if score @s class matches 3 run scoreboard players set @s abilityTimer 38
execute if score @s class matches 3 run item replace entity @s hotbar.2 with light_gray_dye 38

#> Tank guy (Immolation)
execute if score @s class matches 4 run scoreboard players set @s abilityTimer 3
execute if score @s class matches 4 run item replace entity @s hotbar.2 with light_gray_dye 3

#> Smog (Steam Grenade)
execute if score @s class matches 5 run scoreboard players set @s abilityTimer 38
execute if score @s class matches 5 run item replace entity @s hotbar.2 with light_gray_dye 38

#> Frost (Frost Grenade)
execute if score @s class matches 6 run scoreboard players set @s abilityTimer 45
execute if score @s class matches 6 run item replace entity @s hotbar.2 with light_gray_dye 45

#> Marksman (Fiery Echo)
execute if score @s class matches 7 run scoreboard players set @s abilityTimer 38
execute if score @s class matches 7 run item replace entity @s hotbar.2 with light_gray_dye 38

#> Inincablees (Siphon)
execute if score @s class matches 8 run scoreboard players set @s abilityTimer 48
execute if score @s class matches 8 run item replace entity @s hotbar.2 with light_gray_dye 48



##############################################

## jimmyjawnz