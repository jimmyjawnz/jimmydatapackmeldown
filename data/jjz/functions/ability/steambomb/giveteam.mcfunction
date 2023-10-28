############# DEFROST | EXECUTE ##############

execute on owner if entity @s[team=1] run tag @e[tag=noteam,sort=nearest,limit=1] add team1
execute on owner if entity @s[team=2] run tag @e[tag=noteam,sort=nearest,limit=1] add team2
execute on owner if entity @s[team=3] run tag @e[tag=noteam,sort=nearest,limit=1] add team3
execute on owner if entity @s[team=4] run tag @e[tag=noteam,sort=nearest,limit=1] add team4

tag @s remove noteam

##############################################

## jimmyjawnz