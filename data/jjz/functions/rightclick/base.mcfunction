#################### BASE ####################

## ABILITY EXECUTE ##
execute if score @s abilityID matches 0 run function jjz:ability/defrost/execute
execute if score @s abilityID matches 3 run function jjz:ability/steambomb/execute



## COUNTDOWN ##
#scoreboard players add @s hornTime 1
#execute if score @s hornTime matches 130 run function jjz:horn/ready


##############################################

## jimmyjawnz