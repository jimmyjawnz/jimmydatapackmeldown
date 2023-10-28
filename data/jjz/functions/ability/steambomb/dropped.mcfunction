############# DEFROST | EXECUTE ##############

tag @s add init

execute on origin if entity @s[team=1] run tag @e[type=item,tag=init,sort=nearest,limit=1] add team1
execute on origin if entity @s[team=2] run tag @e[type=item,tag=init,sort=nearest,limit=1] add team2
execute on origin if entity @s[team=3] run tag @e[type=item,tag=init,sort=nearest,limit=1] add team3
execute on origin if entity @s[team=4] run tag @e[type=item,tag=init,sort=nearest,limit=1] add team4

tag @s remove init

execute positioned ~ ~0.7 ~ run function jjz:ability/steambomb/landed

##############################################

## jimmyjawnz