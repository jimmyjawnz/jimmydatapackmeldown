############# DEFROST | EXECUTE ##############

execute on owner if entity @s[team=1] run particle dust_color_transition 0.5 0 0 1 0.15 0.15 0.15 ~ ~1 ~ 0 0 0 0 1
execute on owner if entity @s[team=2] run particle dust_color_transition 0 0 0.5 1 0.15 0.15 0.15 ~ ~1 ~ 0 0 0 0 1
execute on owner if entity @s[team=3] run particle dust_color_transition 0 0.5 0 1 0.15 0.15 0.15 ~ ~1 ~ 0 0 0 0 1
execute on owner if entity @s[team=4] run particle dust_color_transition 0.514 0.478 0 1 0.15 0.15 0.15 ~ ~1 ~ 0 0 0 0 1

tag @s remove noteam

##############################################

## jimmyjawnz